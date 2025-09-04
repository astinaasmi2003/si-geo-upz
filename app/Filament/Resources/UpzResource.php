<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UpzResource\Pages;
use App\Filament\Resources\UpzResource\RelationManagers;
use App\Models\Upz;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;

class UpzResource extends Resource
{
    protected static ?string $model = Upz::class;
    protected static ?string $navigationIcon = 'heroicon-o-building-office';
    protected static ?string $activeNavigationIcon = 'heroicon-s-building-office';
    protected static ?string $navigationGroup = 'Manajemen UPZ';
    protected static ?string $navigationLabel = 'Data UPZ';
    protected static ?string $pluralModelLabel = 'UPZ';
    protected static ?string $modelLabel = 'UPZ';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Informasi UPZ')
                    ->description('Lengkapi data dasar tentang Unit Pengumpul Zakat.')
                    ->icon('heroicon-o-information-circle')
                    ->schema([
                        Forms\Components\TextInput::make('nama_upz')
                            ->label('Nama UPZ')
                            ->required()
                            ->maxLength(45)
                            ->placeholder('Contoh: UPZ Masjid Al-Falah')
                            ->columnSpanFull(),

                        Forms\Components\TextInput::make('nama_ketua')
                            ->label('Nama Ketua')
                            ->required()
                            ->maxLength(45)
                            ->placeholder('Contoh: Ahmad Fauzi'),

                        Forms\Components\Select::make('jenis_id')
                            ->label('Jenis UPZ')
                            ->relationship('jenis', 'nama')
                            ->preload()
                            ->searchable()
                            ->required()
                            ->placeholder('Pilih jenis UPZ')
                            ->hint('Pilih jenis sesuai kategori resmi'),
                    ])
                    ->columns(2),

                Forms\Components\Section::make('Detail Pengelolaan')
                    ->icon('heroicon-o-calendar')
                    ->schema([
                        Forms\Components\DatePicker::make('tanggal_berlaku')
                            ->label('Tanggal Berlaku')
                            ->required()
                            ->hint('Tanggal SK berlaku'),

                        Forms\Components\Select::make('dibuat_oleh')
                            ->label('Dibuat Oleh')
                            ->relationship('user', 'name')
                            ->preload()
                            ->searchable()
                            ->required()
                            ->placeholder('Pilih pengguna'),
                    ])
                    ->columns(2),
            ])
            ->columns(1);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(function (Builder $query) {
                $user = Auth::user();

                // Kalau bukan admin, filter hanya data milik user
                if (!$user->hasRole('Administrator')) {
                    $query->where('dibuat_oleh', $user->id);
                }
            })
            ->columns([
                TextColumn::make('nama_upz')
                    ->label('Nama UPZ')
                    ->searchable()
                    ->sortable()
                    ->icon('heroicon-o-building-office')
                    ->wrap()
                    ->weight('bold'),

                TextColumn::make('nama_ketua')
                    ->label('Ketua')
                    ->icon('heroicon-o-user-circle')
                    ->color('gray')
                    ->wrap(),

                TextColumn::make('jenis.nama')
                    ->label('Jenis')
                    ->badge()
                    ->colors([
                        'success' => fn($state) => in_array($state, ['Masjid', 'Mushola']),
                        'info' => fn($state) => $state === 'Lembaga',
                        'warning' => fn($state) => $state === 'Sekolah',
                        'primary',
                    ])
                    ->icon('heroicon-o-tag')
                    ->sortable(),

                TextColumn::make('tanggal_berlaku')
                    ->label('Berlaku')
                    ->date()
                    ->sortable()
                    ->icon('heroicon-o-calendar'),

                TextColumn::make('user.name')
                    ->label('Dibuat Oleh')
                    ->icon('heroicon-o-user')
                    ->color('gray')
                    ->searchable(),

                TextColumn::make('created_at')
                    ->dateTime('d M Y')
                    ->label('Dibuat')
                    ->icon('heroicon-o-clock')
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                SelectFilter::make('jenis')
                    ->relationship('jenis', 'nama')
                    ->label('Filter Jenis')
                    ->searchable(),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped()
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->label('Lihat Detail')
                    ->icon('heroicon-o-eye'),

                Tables\Actions\EditAction::make()
                    ->icon('heroicon-o-pencil-square'),

                Tables\Actions\DeleteAction::make()
                    ->icon('heroicon-o-trash'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->emptyStateHeading('Belum ada data UPZ')
            ->emptyStateDescription('Tambahkan data UPZ dengan mengklik tombol "Buat UPZ" di atas.');
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\KoordinatRelationManager::class,
            RelationManagers\WilayahRelationManager::class,
            RelationManagers\KontakRelationManager::class,
            RelationManagers\FotoRelationManager::class,
            RelationManagers\JadwalPelayananRelationManager::class,
            RelationManagers\LaporanRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUpzs::route('/'),
            'create' => Pages\CreateUpz::route('/create'),
            'edit' => Pages\EditUpz::route('/{record}/edit'),
        ];
    }
}

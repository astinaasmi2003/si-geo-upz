<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UpzResource\Pages;
use App\Filament\Resources\UpzResource\RelationManagers;
use App\Models\Upz;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UpzResource extends Resource
{
    protected static ?string $model = Upz::class;
    protected static ?string $navigationIcon = 'heroicon-o-building-office';
    protected static ?string $navigationLabel = 'Data UPZ';
    protected static ?string $pluralModelLabel = 'UPZ';
    protected static ?string $modelLabel = 'UPZ';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama_upz')
                    ->label('Nama UPZ')
                    ->required()
                    ->maxLength(45),
                Forms\Components\TextInput::make('nama_ketua')
                    ->label('Nama Ketua')
                    ->required()
                    ->maxLength(45),
                Forms\Components\Select::make('jenis_id')
                    ->label('Jenis UPZ')
                    ->relationship('jenis', 'nama')
                    ->preload()
                    ->searchable()
                    ->required(),
                Forms\Components\DatePicker::make('tanggal_berlaku')
                    ->label('Tanggal Berlaku')
                    ->required(),
                Forms\Components\Select::make('dibuat_oleh')
                    ->label('Dibuat Oleh')
                    ->relationship('user', 'name')
                    ->preload()
                    ->searchable()
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_upz')
                    ->label('Nama UPZ')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nama_ketua')
                    ->label('Ketua'),
                Tables\Columns\TextColumn::make('jenis.nama')
                    ->label('Jenis'),
                Tables\Columns\TextColumn::make('tanggal_berlaku')
                    ->label('Berlaku'),
                Tables\Columns\TextColumn::make('dibuat_oleh')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('jenis')
                    ->relationship('jenis', 'nama')
                    ->label('Filter Jenis'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
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

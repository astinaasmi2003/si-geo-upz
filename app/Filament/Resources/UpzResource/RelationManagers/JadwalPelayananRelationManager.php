<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class JadwalPelayananRelationManager extends RelationManager
{
    protected static string $relationship = 'jadwalPelayanan';
    protected static ?string $title = 'Jadwal Pelayanan';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Informasi Jadwal')
                    ->description('Atur jadwal pelayanan untuk UPZ agar lebih terstruktur.')
                    ->icon('heroicon-o-calendar-days')
                    ->schema([
                        Forms\Components\Select::make('hari')
                            ->label('Hari Pelayanan')
                            ->options([
                                'Senin' => 'Senin',
                                'Selasa' => 'Selasa',
                                'Rabu' => 'Rabu',
                                'Kamis' => 'Kamis',
                                'Jumat' => 'Jumat',
                                'Sabtu' => 'Sabtu',
                                'Minggu' => 'Minggu',
                                'Setiap Hari' => 'Setiap Hari',
                            ])
                            ->required()
                            ->searchable()
                            ->native(false)
                            ->placeholder('Pilih hari')
                            ->columnSpanFull(),

                        Forms\Components\TimePicker::make('jam_mulai')
                            ->label('Jam Mulai')
                            ->placeholder('Pilih Jam')
                            ->required()
                            ->seconds(false)
                            ->native(false),

                        Forms\Components\TimePicker::make('jam_selesai')
                            ->label('Jam Selesai')
                            ->placeholder('Pilih Jam')
                            ->required()
                            ->seconds(false)
                            ->native(false),

                        Forms\Components\Textarea::make('keterangan')
                            ->label('Keterangan')
                            ->placeholder('Contoh: Hanya melayani pembayaran zakat fitrah')
                            ->rows(3)
                            ->columnSpanFull(),
                    ])
                    ->columns(2)
                    ->collapsible(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('hari')
                    ->label('Hari')
                    ->badge()
                    ->color('primary')
                    ->sortable(),

                Tables\Columns\TextColumn::make('jam_mulai')
                    ->label('Mulai')
                    ->time('H:i')
                    ->icon('heroicon-o-clock')
                    ->sortable(),

                Tables\Columns\TextColumn::make('jam_selesai')
                    ->label('Selesai')
                    ->time('H:i')
                    ->icon('heroicon-o-clock')
                    ->sortable(),

                Tables\Columns\TextColumn::make('keterangan')
                    ->label('Catatan')
                    ->limit(30)
                    ->tooltip(fn($state) => $state)
                    ->icon('heroicon-o-document-text')
                    ->wrap(),
            ])
            ->defaultSort('hari')
            ->striped() // tampilkan garis zebra agar modern
            ->filters([
                Tables\Filters\SelectFilter::make('hari')
                    ->label('Filter Hari')
                    ->options([
                        'Senin' => 'Senin',
                        'Selasa' => 'Selasa',
                        'Rabu' => 'Rabu',
                        'Kamis' => 'Kamis',
                        'Jumat' => 'Jumat',
                        'Sabtu' => 'Sabtu',
                        'Minggu' => 'Minggu',
                    ]),
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Jadwal')
                    ->icon('heroicon-o-plus')
                    ->color('success')
                    ->modalHeading('Tambah Jadwal Pelayanan')
                    ->modalIcon('heroicon-o-calendar'),
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->label('Lihat')
                    ->icon('heroicon-o-eye')
                    ->modalHeading('Detail Jadwal'),

                Tables\Actions\EditAction::make()
                    ->label('Edit')
                    ->icon('heroicon-o-pencil'),

                Tables\Actions\DeleteAction::make()
                    ->label('Hapus')
                    ->icon('heroicon-o-trash'),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()
                    ->label('Hapus Terpilih')
                    ->icon('heroicon-o-trash')
                    ->color('danger'),
            ])
            ->emptyStateHeading('Belum ada jadwal')
            ->emptyStateDescription('Tambahkan jadwal pelayanan agar pengelolaan lebih teratur.');
    }
}
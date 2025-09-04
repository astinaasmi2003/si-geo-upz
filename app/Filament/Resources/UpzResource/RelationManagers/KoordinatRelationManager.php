<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KoordinatRelationManager extends RelationManager
{
    protected static string $relationship = 'koordinat';
    protected static ?string $title = 'Lokasi Koordinat';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Detail Lokasi')
                    ->description('Masukkan titik koordinat lokasi UPZ dengan format Latitude dan Longitude.')
                    ->icon('heroicon-o-map-pin')
                    ->schema([
                        Forms\Components\TextInput::make('latitude')
                            ->label('Latitude')
                            ->placeholder('-6.200000')
                            ->required()
                            ->prefixIcon('heroicon-o-map')
                            ->numeric()
                            ->rule('numeric')
                            ->helperText('Gunakan format desimal, contoh: -6.200000'),

                        Forms\Components\TextInput::make('longitude')
                            ->label('Longitude')
                            ->placeholder('106.816666')
                            ->required()
                            ->prefixIcon('heroicon-o-map')
                            ->numeric()
                            ->rule('numeric')
                            ->helperText('Gunakan format desimal, contoh: 106.816666'),
                    ])
                    ->columns(2)
                    ->collapsible(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('latitude')
                    ->label('Latitude')
                    ->icon('heroicon-o-map-pin')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('longitude')
                    ->label('Longitude')
                    ->icon('heroicon-o-map')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ditambahkan')
                    ->dateTime('d M Y, H:i')
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped()
            ->filters([
                Tables\Filters\Filter::make('recent')
                    ->label('Hanya yang terbaru')
                    ->query(fn($query) => $query->where('created_at', '>=', now()->subDays(7))),
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Koordinat')
                    ->icon('heroicon-o-plus-circle')
                    ->color('success')
                    ->modalHeading('Tambah Titik Koordinat')
                    ->modalIcon('heroicon-o-map'),
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->label('Lihat')
                    ->icon('heroicon-o-eye'),

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
            ->emptyStateHeading('Belum ada titik koordinat')
            ->emptyStateDescription('Tambahkan titik koordinat agar lokasi UPZ dapat ditemukan.');
    }
}

<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class LaporanRelationManager extends RelationManager
{
    protected static string $relationship = 'Laporan';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\DatePicker::make('tanggal')->label('Tanggal')->required(),
                Forms\Components\TextInput::make('judul_laporan')->label('Judul Laporan')->required(),
                Forms\Components\Textarea::make('isi_laporan')->label('Isi Laporan'),
                Forms\Components\TextInput::make('penghipunan_infaq')->label('Penghimpunan Infaq'),
                Forms\Components\TextInput::make('pendistribusian_infaq')->label('Distribusi Infaq'),
                Forms\Components\TextInput::make('penghimpunan_zakat')->label('Penghimpunan Zakat'),
                Forms\Components\TextInput::make('pendistribusian_zakat')->label('Distribusi Zakat'),
                Forms\Components\TextInput::make('penghimpunan_zakat_fitrah')->label('Penghimpunan Zakat Fitrah'),
                Forms\Components\TextInput::make('pendistribusian_zakat_fitrah')->label('Distribusi Zakat Fitrah'),
                Forms\Components\Textarea::make('kegiatan')->label('Kegiatan'),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('tanggal')->label('Tanggal'),
                Tables\Columns\TextColumn::make('judul_laporan')->label('Judul'),
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ]);
    }
}

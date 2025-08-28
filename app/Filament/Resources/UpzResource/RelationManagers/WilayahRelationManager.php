<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class WilayahRelationManager extends RelationManager
{
    protected static string $relationship = 'wilayah';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama')->label('Nama Wilayah')->required(),
                Forms\Components\TextInput::make('jenis')->label('Jenis')->required(),
                Forms\Components\TextInput::make('kode')->label('Kode Wilayah')->required(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama')->label('Nama'),
                Tables\Columns\TextColumn::make('jenis')->label('Jenis'),
                Tables\Columns\TextColumn::make('kode')->label('Kode'),
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

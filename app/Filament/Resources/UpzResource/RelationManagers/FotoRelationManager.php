<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FotoRelationManager extends RelationManager
{
    protected static string $relationship = 'foto';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\FileUpload::make('url_foto')
                    ->label('Foto')
                    ->image()
                    ->directory('foto-upz')
                    ->required(),
                Forms\Components\Textarea::make('keterangan')->label('Keterangan')->required(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('url_foto')->label('Foto'),
                Tables\Columns\TextColumn::make('keterangan')->label('Keterangan'),
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

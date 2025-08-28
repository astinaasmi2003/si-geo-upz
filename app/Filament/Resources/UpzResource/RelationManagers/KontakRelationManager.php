<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KontakRelationManager extends RelationManager
{
    protected static string $relationship = 'kontak';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('jenis_kontak')
                    ->options([
                        'telepon' => 'Telepon',
                        'email' => 'Email',
                        'whatsapp' => 'WhatsApp',
                    ])
                    ->label('Jenis Kontak')
                    ->required(),
                Forms\Components\TextInput::make('isi_kontak')->label('Isi Kontak')->required(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('jenis_kontak')->label('Jenis Kontak'),
                Tables\Columns\TextColumn::make('isi_kontak')->label('Isi'),
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

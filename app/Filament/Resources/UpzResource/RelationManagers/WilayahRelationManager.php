<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Support\Colors\Color;
use Filament\Tables;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class WilayahRelationManager extends RelationManager
{
    protected static string $relationship = 'wilayah';

    protected static ?string $title = 'Manajemen Wilayah';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->columns(3)
                    ->schema([
                        Section::make('Informasi Wilayah')
                            ->description('Isi detail wilayah yang ingin Anda tambahkan.')
                            ->icon('heroicon-o-map')
                            ->schema([
                                Grid::make(3)
                                    ->schema([
                                        TextInput::make('nama')
                                            ->label('Nama Kecamatan')
                                            ->placeholder('Contoh: Kecamatan Sukamaju')
                                            ->required()
                                            ->maxLength(255),

                                        Select::make('jenis')
                                            ->label('Jenis Wilayah')
                                            ->options([
                                                'Kecamatan' => 'Kecamatan',
                                                'Desa' => 'Desa',
                                            ])
                                            ->native(false)
                                            ->required(),

                                        TextInput::make('kode')
                                            ->label('Kode POS')
                                            ->placeholder('Contoh: 75314')
                                            ->required()
                                            ->maxLength(50),
                                    ]),



                                Textarea::make('alamat')
                                    ->label('Alamat')
                                    ->placeholder('Contoh: Jl. James Simanjuntak')
                                    ->rows(3)
                                    ->autosize()
                                    ->required(),
                            ]),
                    ]),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('alamat')
                    ->label('Alamat')
                    ->icon('heroicon-o-map-pin')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('nama')
                    ->label('Kecamatan')
                    ->icon('heroicon-o-map')
                    ->searchable()
                    ->sortable(),

                BadgeColumn::make('jenis')
                    ->label('Jenis')
                    ->colors([
                        'primary' => 'Kecamatan',
                        'success' => 'Desa',
                        'warning' => fn($state) => !in_array($state, ['Kecamatan', 'Desa']),
                    ])
                    ->icon('heroicon-o-tag'),

                TextColumn::make('kode')
                    ->label('Kode Pos')
                    ->badge()
                    ->color(Color::Blue)
                    ->sortable(),
            ])
            ->filters([])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Wilayah')
                    ->icon('heroicon-o-plus-circle')
                    ->color('success')
                    ->modalHeading('Tambah Wilayah Baru')
                    ->modalDescription('Isi form untuk menambahkan wilayah baru.'),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->label('Edit')
                    ->icon('heroicon-o-pencil-square')
                    ->color('warning'),

                Tables\Actions\DeleteAction::make()
                    ->label('Hapus')
                    ->icon('heroicon-o-trash')
                    ->color('danger'),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()
                    ->label('Hapus Terpilih')
                    ->color('danger'),
            ]);
    }
}

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
    protected static ?string $title = 'Kontak UPZ';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Detail Kontak')
                    ->description('Tambahkan informasi kontak agar mudah dihubungi oleh masyarakat.')
                    ->icon('heroicon-o-phone')
                    ->schema([
                        Forms\Components\Select::make('jenis_kontak')
                            ->label('Jenis Kontak')
                            ->options([
                                'telepon' => 'Telepon',
                                'email' => 'Email',
                                'whatsapp' => 'WhatsApp',
                            ])
                            ->required()
                            ->native(false)
                            ->searchable()
                            ->placeholder('Pilih jenis kontak')
                            ->prefixIcon('heroicon-o-phone'),

                        Forms\Components\TextInput::make('isi_kontak')
                            ->label('Isi Kontak')
                            ->placeholder('Contoh: +62 812-3456-7890')
                            ->required()
                            ->prefixIcon('heroicon-o-chat-bubble-left')
                            ->maxLength(50),
                    ])
                    ->columns(2)
                    ->collapsible(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('jenis_kontak')
                    ->label('Jenis')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'telepon' => 'primary',
                        'email' => 'info',
                        'whatsapp' => 'success',
                        default => 'gray',
                    })
                    ->icon(fn(string $state): string => match ($state) {
                        'telepon' => 'heroicon-o-phone',
                        'email' => 'heroicon-o-envelope',
                        'whatsapp' => 'heroicon-o-chat-bubble-left',
                        default => 'heroicon-o-question-mark-circle',
                    })
                    ->sortable(),

                Tables\Columns\TextColumn::make('isi_kontak')
                    ->label('Isi Kontak')
                    ->copyable()
                    ->copyMessage('Kontak disalin!')
                    ->icon('heroicon-o-document-duplicate')
                    ->searchable(),
            ])
            ->defaultSort('jenis_kontak')
            ->striped()
            ->filters([
                Tables\Filters\SelectFilter::make('jenis_kontak')
                    ->label('Filter Jenis Kontak')
                    ->options([
                        'telepon' => 'Telepon',
                        'email' => 'Email',
                        'whatsapp' => 'WhatsApp',
                    ]),
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Kontak')
                    ->icon('heroicon-o-plus-circle')
                    ->color('success')
                    ->modalHeading('Tambah Kontak Baru')
                    ->modalIcon('heroicon-o-phone'),
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
            ->emptyStateHeading('Belum ada kontak')
            ->emptyStateDescription('Tambahkan kontak agar masyarakat bisa menghubungi UPZ.');
    }
}

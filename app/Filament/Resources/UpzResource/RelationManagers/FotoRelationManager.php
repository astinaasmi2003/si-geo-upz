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
    protected static ?string $title = 'Galeri Foto';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Upload Foto')
                    ->description('Unggah foto terkait UPZ. Pastikan gambar berkualitas baik.')
                    ->icon('heroicon-o-photo')
                    ->schema([
                        Forms\Components\FileUpload::make('url_foto')
                            ->label('Pilih Foto')
                            ->image()
                            ->imageEditor() // bisa crop/edit langsung
                            ->directory('foto-upz')
                            ->required()
                            ->maxSize(2048) // Maksimal 2MB
                            ->hint('Format: JPG/PNG, Max 2MB')
                            ->previewable()
                            ->columnSpanFull(),

                        Forms\Components\Textarea::make('keterangan')
                            ->label('Keterangan Foto')
                            ->placeholder('Contoh: Foto kegiatan UPZ saat pengumpulan zakat')
                            ->required()
                            ->rows(3)
                            ->columnSpanFull(),
                    ])
                    ->columns(1)
                    ->collapsible(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('url_foto')
                    ->label('Foto')
                    ->square()
                    ->size(80)
                    ->circular() // agar lebih estetik
                    ->openUrlInNewTab(), // bisa klik buka gambar asli

                Tables\Columns\TextColumn::make('keterangan')
                    ->label('Deskripsi')
                    ->wrap()
                    ->icon('heroicon-o-chat-bubble-left')
                    ->tooltip(fn($state) => $state) // tampilkan full text saat hover
                    ->badge()
                    ->color('info'),
            ])
            ->defaultPaginationPageOption(5)
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Foto')
                    ->icon('heroicon-o-plus')
                    ->color('success')
                    ->modalHeading('Unggah Foto Baru')
                    ->modalIcon('heroicon-o-photo'),
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->label('Lihat')
                    ->icon('heroicon-o-eye')
                    ->modalHeading('Preview Foto')
                    ->modalContent(fn($record) => view('components.preview-foto', ['foto' => $record])),

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
            ->emptyStateHeading('Belum ada foto')
            ->emptyStateDescription('Tambahkan foto UPZ agar galeri lebih informatif.');
    }
}
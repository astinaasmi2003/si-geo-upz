<?php

namespace App\Filament\Resources\UpzResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Support\RawJs;
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class LaporanRelationManager extends RelationManager
{
    protected static string $relationship = 'laporan'; // perbaiki huruf kecil agar konsisten
    protected static ?string $title = 'Laporan UPZ';
    protected static ?string $icon = 'heroicon-o-document-text';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Informasi Laporan')
                    ->icon('heroicon-o-calendar')
                    ->schema([
                        DatePicker::make('tanggal')
                            ->label('Tanggal Laporan')
                            ->placeholder('Pilih Tanggal')
                            ->native(false)
                            ->prefixIcon('heroicon-o-calendar-days')
                            ->default(now())
                            ->required(),
                        TextInput::make('judul_laporan')
                            ->label('Judul Laporan')
                            ->placeholder('Contoh: Laporan Bulanan Januari')
                            ->required(),
                    ])
                    ->columns(2),

                Section::make('Detail Laporan')
                    ->icon('heroicon-o-document-text')
                    ->schema([
                        Textarea::make('isi_laporan')
                            ->label('Isi Laporan')
                            ->placeholder('Tuliskan ringkasan laporan di sini...')
                            ->rows(4),
                    ]),

                Section::make('Data Penghimpunan & Distribusi')
                    ->icon('heroicon-o-banknotes')
                    ->schema([
                        TextInput::make('penghipunan_infaq')
                            ->label('Penghimpunan Infaq')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                        TextInput::make('pendistribusian_infaq')
                            ->label('Distribusi Infaq')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                        TextInput::make('penghimpunan_zakat')
                            ->label('Penghimpunan Zakat')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                        TextInput::make('pendistribusian_zakat')
                            ->label('Distribusi Zakat')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                        TextInput::make('penghimpunan_zakat_fitrah')
                            ->label('Penghimpunan Zakat Fitrah')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                        TextInput::make('pendistribusian_zakat_fitrah')
                            ->label('Distribusi Zakat Fitrah')
                            ->placeholder('Masukkan Nominal...')
                            ->prefix('Rp')
                            ->mask(RawJs::make('$money($input)'))
                            ->stripCharacters(',')
                            ->numeric(),
                    ])
                    ->columns(2),

                Section::make('Kegiatan')
                    ->icon('heroicon-o-clipboard-document')
                    ->schema([
                        Textarea::make('kegiatan')
                            ->label('Deskripsi Kegiatan')
                            ->placeholder('Jelaskan kegiatan UPZ pada periode laporan ini...')
                            ->rows(3),
                    ]),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('tanggal')
                    ->label('Tanggal')
                    ->date('d M Y')
                    ->sortable()
                    ->icon('heroicon-o-calendar'),

                Tables\Columns\TextColumn::make('judul_laporan')
                    ->label('Judul')
                    ->searchable()
                    ->wrap()
                    ->icon('heroicon-o-document-text'),

                Tables\Columns\TextColumn::make('penghipunan_infaq')
                    ->label('Infaq')
                    ->prefix('Rp ')
                    ->colors([
                        'success' => fn($state) => $state > 5000000,
                        'warning' => fn($state) => $state > 1000000 && $state <= 5000000,
                        'danger' => fn($state) => $state <= 1000000,
                    ]),
            ])
            ->defaultSort('tanggal', 'desc')
            ->recordUrl(null)
            ->striped()
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Tambah Laporan')
                    ->icon('heroicon-o-plus-circle')
                    ->button()
                    ->color('success'),
            ])
            ->actions([
                Action::make('print')
                    ->label('Print')
                    ->icon('heroicon-o-printer')
                    ->color('success')
                    ->url(fn($record) => route('laporan.cetak', $record->id)) // route cetak
                    ->openUrlInNewTab(),
                Tables\Actions\EditAction::make()
                    ->icon('heroicon-o-pencil-square')
                    ->color('primary'),
                Tables\Actions\DeleteAction::make()
                    ->icon('heroicon-o-trash')
                    ->color('danger'),
            ]);
    }
}

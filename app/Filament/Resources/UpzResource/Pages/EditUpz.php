<?php

namespace App\Filament\Resources\UpzResource\Pages;

use App\Filament\Resources\UpzResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditUpz extends EditRecord
{
    protected static string $resource = UpzResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Foto;
use Illuminate\Auth\Access\Response;

class FotoPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Foto');
    }

    public function view(User $user, Foto $model): bool
    {
        return $user->can('View Foto');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Foto');
    }

    public function update(User $user, Foto $model): bool
    {
        return $user->can('Update Foto');
    }

    public function delete(User $user, Foto $model): bool
    {
        return $user->can('Delete Foto');
    }

    public function restore(User $user, Foto $model): bool
    {
        return $user->can('Restore Foto');
    }

    public function forceDelete(User $user, Foto $model): bool
    {
        return $user->can('Force Delete Foto');
    }
}
<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Koordinat;
use Illuminate\Auth\Access\Response;

class KoordinatPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Koordinat');
    }

    public function view(User $user, Koordinat $model): bool
    {
        return $user->can('View Koordinat');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Koordinat');
    }

    public function update(User $user, Koordinat $model): bool
    {
        return $user->can('Update Koordinat');
    }

    public function delete(User $user, Koordinat $model): bool
    {
        return $user->can('Delete Koordinat');
    }

    public function restore(User $user, Koordinat $model): bool
    {
        return $user->can('Restore Koordinat');
    }

    public function forceDelete(User $user, Koordinat $model): bool
    {
        return $user->can('Force Delete Koordinat');
    }
}
<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Wilayah;
use Illuminate\Auth\Access\Response;

class WilayahPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Wilayah');
    }

    public function view(User $user, Wilayah $model): bool
    {
        return $user->can('View Wilayah');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Wilayah');
    }

    public function update(User $user, Wilayah $model): bool
    {
        return $user->can('Update Wilayah');
    }

    public function delete(User $user, Wilayah $model): bool
    {
        return $user->can('Delete Wilayah');
    }

    public function restore(User $user, Wilayah $model): bool
    {
        return $user->can('Restore Wilayah');
    }

    public function forceDelete(User $user, Wilayah $model): bool
    {
        return $user->can('Force Delete Wilayah');
    }
}
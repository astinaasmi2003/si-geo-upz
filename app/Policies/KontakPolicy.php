<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Kontak;
use Illuminate\Auth\Access\Response;

class KontakPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Kontak');
    }

    public function view(User $user, Kontak $model): bool
    {
        return $user->can('View Kontak');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Kontak');
    }

    public function update(User $user, Kontak $model): bool
    {
        return $user->can('Update Kontak');
    }

    public function delete(User $user, Kontak $model): bool
    {
        return $user->can('Delete Kontak');
    }

    public function restore(User $user, Kontak $model): bool
    {
        return $user->can('Restore Kontak');
    }

    public function forceDelete(User $user, Kontak $model): bool
    {
        return $user->can('Force Delete Kontak');
    }
}
<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Jenis;
use Illuminate\Auth\Access\Response;

class JenisPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Jenis');
    }

    public function view(User $user, Jenis $model): bool
    {
        return $user->can('View Jenis');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Jenis');
    }

    public function update(User $user, Jenis $model): bool
    {
        return $user->can('Update Jenis');
    }

    public function delete(User $user, Jenis $model): bool
    {
        return $user->can('Delete Jenis');
    }

    public function restore(User $user, Jenis $model): bool
    {
        return $user->can('Restore Jenis');
    }

    public function forceDelete(User $user, Jenis $model): bool
    {
        return $user->can('Force Delete Jenis');
    }
}
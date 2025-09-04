<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Upz;
use Illuminate\Auth\Access\Response;

class UpzPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Upz');
    }

    public function view(User $user, Upz $model): bool
    {
        return $user->can('View Upz');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Upz');
    }

    public function update(User $user, Upz $model): bool
    {
        return $user->can('Update Upz');
    }

    public function delete(User $user, Upz $model): bool
    {
        return $user->can('Delete Upz');
    }

    public function restore(User $user, Upz $model): bool
    {
        return $user->can('Restore Upz');
    }

    public function forceDelete(User $user, Upz $model): bool
    {
        return $user->can('Force Delete Upz');
    }
}
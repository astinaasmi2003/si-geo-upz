<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Laporan;
use Illuminate\Auth\Access\Response;

class LaporanPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Laporan');
    }

    public function view(User $user, Laporan $model): bool
    {
        return $user->can('View Laporan');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Laporan');
    }

    public function update(User $user, Laporan $model): bool
    {
        return $user->can('Update Laporan');
    }

    public function delete(User $user, Laporan $model): bool
    {
        return $user->can('Delete Laporan');
    }

    public function restore(User $user, Laporan $model): bool
    {
        return $user->can('Restore Laporan');
    }

    public function forceDelete(User $user, Laporan $model): bool
    {
        return $user->can('Force Delete Laporan');
    }
}
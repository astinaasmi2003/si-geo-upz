<?php

namespace App\Policies;

use App\Models\User;
use App\Models\JadwalPelayanan;
use Illuminate\Auth\Access\Response;

class JadwalPelayananPolicy
{
    public function viewAny(User $user): bool
    {
        return $user->can('View Any Jadwal Pelayanan');
    }

    public function view(User $user, JadwalPelayanan $model): bool
    {
        return $user->can('View Jadwal Pelayanan');
    }

    public function create(User $user): bool
    {
        return $user->can('Create Jadwal Pelayanan');
    }

    public function update(User $user, JadwalPelayanan $model): bool
    {
        return $user->can('Update Jadwal Pelayanan');
    }

    public function delete(User $user, JadwalPelayanan $model): bool
    {
        return $user->can('Delete Jadwal Pelayanan');
    }

    public function restore(User $user, JadwalPelayanan $model): bool
    {
        return $user->can('Restore Jadwal Pelayanan');
    }

    public function forceDelete(User $user, JadwalPelayanan $model): bool
    {
        return $user->can('Force Delete Jadwal Pelayanan');
    }
}
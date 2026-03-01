<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Joueur extends Authenticatable
{
    use Notifiable;

    protected $fillable = ['pseudo', 'email', 'password', 'score_total', 'avatar'];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'password' => 'hashed',
        ];
    }

    public function parties()
    {
        return $this->belongsToMany(Partie::class, 'joueur_partie', 'player_id', 'party_id')
                    ->withPivot('role', 'points_gagnes')
                    ->withTimestamps();
    }

    public function partiesGagnees()
    {
        return $this->hasMany(Partie::class, 'gagnant_id');
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Joueur;
use Illuminate\Support\Facades\Hash;

class JoueurSeeder extends Seeder
{
    public function run(): void
    {
        Joueur::create([
            'pseudo' => 'Joueur1',
            'email' => 'joueur1@example.com',
            'password' => Hash::make('password'),
            'score_total' => 100,
        ]);

        Joueur::create([
            'pseudo' => 'Joueur2',
            'email' => 'joueur2@example.com',
            'password' => Hash::make('password'),
            'score_total' => 50,
        ]);
    }
}

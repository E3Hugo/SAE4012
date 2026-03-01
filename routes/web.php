<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\MotController;
use App\Http\Controllers\JoueurController;
use App\Http\Controllers\PartieController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AuthJoueurController;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

// Joueur Auth Routes
Route::get('/login', [AuthJoueurController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthJoueurController::class, 'login']);
Route::get('/register', [AuthJoueurController::class, 'showRegisterForm'])->name('register');
Route::post('/register', [AuthJoueurController::class, 'register']);
Route::post('/logout', [AuthJoueurController::class, 'logout'])->name('logout');

Route::middleware(['auth:joueur'])->group(function () {
    Route::get('/joueur/profile', [AuthJoueurController::class, 'profile'])->name('joueur.profile');
    Route::get('/joueur/leaderboard', [AuthJoueurController::class, 'leaderboard'])->name('joueur.leaderboard');
    Route::get('/joueur/parties', [AuthJoueurController::class, 'allParties'])->name('joueur.parties');
    Route::delete('/joueur/delete-account', [AuthJoueurController::class, 'deleteAccount'])->name('joueur.delete_account');
});

Route::resource('mots', MotController::class);
Route::resource('joueurs', JoueurController::class);
Route::resource('parties', PartieController::class);

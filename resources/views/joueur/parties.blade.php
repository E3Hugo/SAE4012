@extends('layouts.joueur')

@section('content')
    <div class="page-header">
        <h1 class="page-title">Toutes les Parties</h1>
        <p style="color: var(--text-muted); margin-top: 0.5rem;">Historique complet des parties jouées sur Undercover.</p>
    </div>

    <div class="card">
        <table style="width: 100%; border-collapse: collapse;">
            <thead>
                <tr style="text-align: left; color: var(--text-muted); font-size: 0.8125rem; border-bottom: 2px solid var(--border);">
                    <th style="padding: 1.25rem 1rem;">ID</th>
                    <th style="padding: 1.25rem 1rem;">Date</th>
                    <th style="padding: 1.25rem 1rem;">Statut</th>
                    <th style="padding: 1.25rem 1rem;">Mot de la Partie</th>
                    <th style="padding: 1.25rem 1rem; text-align: right;">Gagnant</th>
                </tr>
            </thead>
            <tbody>
                @foreach($parties as $partie)
                    <tr style="border-bottom: 1px solid #f1f5f9; transition: background-color 0.2s;">
                        <td style="padding: 1.25rem 1rem; font-weight: 700; color: var(--text-muted);">#{{ $partie->id }}</td>
                        <td style="padding: 1.25rem 1rem;">{{ \Carbon\Carbon::parse($partie->date)->format('H:i - d/m/Y') }}</td>
                        <td style="padding: 1.25rem 1rem;">
                            <span style="background-color: #dcfce7; color: #166534; padding: 0.2rem 0.6rem; border-radius: 9999px; font-size: 0.75rem; font-weight: 700; text-transform: uppercase;">
                                {{ $partie->statut }}
                            </span>
                        </td>
                        <td style="padding: 1.25rem 1rem;">
                            <div style="font-weight: 600; color: var(--text-main);">{{ $partie->mot->mot_principal }}</div>
                            <div style="font-size: 0.75rem; color: var(--text-muted);">Catégorie: {{ $partie->mot->categorie }}</div>
                        </td>
                        <td style="padding: 1.25rem 1rem; text-align: right;">
                            @if($partie->gagnant)
                                <div style="display: flex; align-items: center; justify-content: flex-end; gap: 0.5rem;">
                                    <span style="font-size: 0.875rem; font-weight: 700; color: var(--accent);">🏆 {{ $partie->gagnant->pseudo }}</span>
                                </div>
                            @else
                                <span style="font-size: 0.875rem; color: var(--text-muted); font-style: italic;">Pas de gagnant</span>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection

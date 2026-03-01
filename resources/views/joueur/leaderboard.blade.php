@extends('layouts.joueur')

@section('content')
    <div class="page-header">
        <h1 class="page-title">Classement des Joueurs</h1>
        <p style="color: var(--text-muted); margin-top: 0.5rem;">Découvrez les meilleurs espions de la communauté Undercover.</p>
    </div>

    <div class="card">
        <table style="width: 100%; border-collapse: collapse;">
            <thead>
                <tr style="text-align: left; color: var(--text-muted); font-size: 0.8125rem; border-bottom: 2px solid var(--border);">
                    <th style="padding: 1rem;">Rang</th>
                    <th style="padding: 1rem;">Joueur</th>
                    <th style="padding: 1rem; text-align: center;">Parties</th>
                    <th style="padding: 1rem; text-align: right;">Score Total</th>
                </tr>
            </thead>
            <tbody>
                @foreach($joueurs as $index => $j)
                    <tr style="border-bottom: 1px solid #f1f5f9; transition: background-color 0.2s; {{ $j->id == Auth::guard('joueur')->id() ? 'background-color: #f0f9ff;' : '' }}">
                        <td style="padding: 1.25rem 1rem;">
                            @if($index == 0)
                                <span style="background: #fef3c7; color: #92400e; padding: 0.25rem 0.75rem; border-radius: 1rem; font-weight: 800; font-size: 0.75rem;">🥇 1ER</span>
                            @elseif($index == 1)
                                <span style="background: #f1f5f9; color: #475569; padding: 0.25rem 0.75rem; border-radius: 1rem; font-weight: 800; font-size: 0.75rem;">🥈 2EME</span>
                            @elseif($index == 2)
                                <span style="background: #ffedd5; color: #9a3412; padding: 0.25rem 0.75rem; border-radius: 1rem; font-weight: 800; font-size: 0.75rem;">🥉 3EME</span>
                            @else
                                <span style="font-weight: 600; color: var(--text-muted); padding-left: 0.5rem;">#{{ $index + 1 }}</span>
                            @endif
                        </td>
                        <td style="padding: 1.25rem 1rem;">
                            <div style="display: flex; align-items: center; gap: 0.75rem;">
                                <div style="width: 32px; height: 32px; border-radius: 50%; background-color: #e2e8f0; display: flex; align-items: center; justify-content: center; font-weight: 700; font-size: 0.75rem; color: #64748b;">
                                    {{ strtoupper(substr($j->pseudo, 0, 1)) }}
                                </div>
                                <div>
                                    <div style="font-weight: 700; color: var(--text-main);">
                                        {{ $j->pseudo }}
                                        @if($j->id == Auth::guard('joueur')->id())
                                            <span style="font-size: 0.7rem; color: var(--primary); font-weight: 800; margin-left: 0.25rem;">(VOUS)</span>
                                        @endif
                                    </div>
                                    <div style="font-size: 0.75rem; color: var(--text-muted);">Membre depuis {{ $j->created_at->format('M Y') }}</div>
                                </div>
                            </div>
                        </td>
                        <td style="padding: 1.25rem 1rem; text-align: center; font-weight: 600;">{{ $j->parties->count() }}</td>
                        <td style="padding: 1.25rem 1rem; text-align: right;">
                            <span style="font-size: 1.125rem; font-weight: 800; color: var(--primary);">{{ number_format($j->score_total, 0, ',', ' ') }}</span>
                            <span style="font-size: 0.75rem; color: var(--text-muted); font-weight: 600;">PTS</span>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection

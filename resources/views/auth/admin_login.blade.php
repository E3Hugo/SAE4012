@extends('layouts.app')

@section('content')
<div style="display: flex; height: 100vh; width: 100vw; position: fixed; top: 0; left: 0; background: #f8fafc; align-items: center; justify-content: center; z-index: 10000; font-family: 'Outfit', sans-serif;">
    <div style="max-width: 400px; width: 100%; background: #ffffff; padding: 3rem; border-radius: 1.5rem; box-shadow: 0 10px 25px rgba(0,0,0,0.05); text-align: center;">
        <h1 style="font-size: 1.75rem; font-weight: 800; margin-bottom: 2rem; color: #1e293b;">Accès Admin</h1>
        
        @if($errors->any())
            <div style="background: #fef2f2; color: #ef4444; padding: 1rem; border-radius: 0.75rem; margin-bottom: 1.5rem; font-size: 0.875rem;">
                {{ $errors->first() }}
            </div>
        @endif

        <form action="{{ route('admin.login.submit') }}" method="POST">
            @csrf
            <div style="margin-bottom: 1.5rem; text-align: left;">
                <label style="display: block; font-size: 0.875rem; font-weight: 600; margin-bottom: 0.5rem; color: #64748b;">Identifiant</label>
                <input type="text" name="email" required style="width: 100%; padding: 0.75rem 1rem; border: 1px solid #e2e8f0; border-radius: 0.75rem; font-size: 1rem; background: #f8fafc;">
            </div>
            
            <div style="margin-bottom: 2rem; text-align: left;">
                <label style="display: block; font-size: 0.875rem; font-weight: 600; margin-bottom: 0.5rem; color: #64748b;">Mot de passe</label>
                <input type="password" name="password" required style="width: 100%; padding: 0.75rem 1rem; border: 1px solid #e2e8f0; border-radius: 0.75rem; font-size: 1rem; background: #f8fafc;">
            </div>

            <button type="submit" style="width: 100%; padding: 1rem; background: #1e293b; color: #ffffff; border: none; border-radius: 0.75rem; font-weight: 700; cursor: pointer; transition: background 0.2s;">Se connecter</button>
        </form>
    </div>
</div>
@endsection

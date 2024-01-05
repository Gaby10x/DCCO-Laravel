<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User; // Asegúrate de importar el modelo User si aún no lo has hecho
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    // Mostrar el formulario de registro
    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    // Procesar el registro de usuarios
    public function register(Request $request)
    {
        // Validar los datos del formulario de registro
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
        ]);

        // Crear un nuevo usuario
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        // Autenticar al nuevo usuario
        auth()->login($user);

        // Redirigir a la ruta deseada después del registro
        return redirect('/dashboard');
    }
}

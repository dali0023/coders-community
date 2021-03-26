<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Entrust;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */

// public function showLoginForm()
// {
//     session(['link' => url()->previous()]);
//     return view('auth.login');
// }


// protected function authenticated($request, $user)
// {
//     if($user->hasRole('admin')) {
//             return redirect('/dashboard');
//         }
//     return redirect(session('link'));
// }

//   protected function authenticated($request, $user)
//     {
//        if($user->hasRole('admin')) {
//             return redirect('/dashboard');
//         }

//         return redirect('/');
//     }
public function redirectTo(){
    if (request()->has('previous')) {
        $this->redirectTo = request()->get('previous');
    }
    return $this->redirectTo ?? '/defaultPath';
}
    // 
    // protected function redirectTo(){
    //     return url()->previous();
    // }
   /// protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // session(['url.intended' => url()->previous()]);
        // $this->redirectTo = session()->get('url.intended');
        $this->middleware('guest', ['except' => 'logout']);
    }
}

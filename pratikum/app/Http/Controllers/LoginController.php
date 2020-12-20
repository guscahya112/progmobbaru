<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;


class LoginController extends Controller
{
    public function index (Request $request){
        $user=User::where('email',$request->email)->first();
        
        if(Hash::check($request->password,$user->password)){
            return response()->json(['success' => '1','name' => $user->name,'email' => $user->email]);
        }

        return response()->json(['success' => '2']);
        
    }
}

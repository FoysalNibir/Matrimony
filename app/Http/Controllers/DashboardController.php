<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
	public function getUsers(){
		
		$users = User::with('detail')->get();
		
		return response()->json(['success' => $users], $this->successStatus);
		
	}
}

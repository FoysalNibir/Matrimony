<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User; 
use App\Detail;
use App\Panel;
use App\Panelrelative;
use Illuminate\Support\Facades\Auth; 
use Validator;

class PassportController extends Controller
{
	public $successStatus = 200;
	public $failedStatus = 403;
	public $invalidStatus= 406;



   /**
 
    * login api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function login(){

   	if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){

   		$user = Auth::user();

   		$success['token'] =  $user->createToken('MyApp')->accessToken;

   		return response()->json(['success' => $success], $this->successStatus);

   	}

   	else{

   		return response()->json(['error'=>'Unauthorised'], 401);

   	}

   }



   /**
 
    * Register api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function register(Request $request){

   	$validator = Validator::make($request->all(), [

   		'name' => 'required',

   		'email' => 'required|email',

   		'password' => 'required',

   		'c_password' => 'required|same:password',

   	]);



   	if ($validator->fails()) {

   		return response()->json(['error'=>$validator->errors()], 401);            

   	}



   	$input = $request->all();

   	$input['password'] = bcrypt($input['password']);

   	$user = User::create($input);

   	$success['token'] =  $user->createToken('MyApp')->accessToken;

   	$success['name'] =  $user->name;



   	return response()->json(['success'=>$success], $this->successStatus);

   }



   /**
 
    * details api
 
    *
 
    * @return \Illuminate\Http\Response
 
    */

   public function getDetails(){

   	$user = Auth::user();

   	return response()->json(['success' => $user], $this->successStatus);

   }

   public function getUsers(){
   	
   	$users = User::with('detail')->with('parent')->with('siblings')->get();
   	
   	return response()->json(['success' => $users], $this->successStatus);
   	
   }

   public function getPanels(){
   	
   	$panels = Panel::with('panelrelatives')->get();
   	
   	return response()->json(['success' => $panels], $this->successStatus);
   	
   }

   public function getUserPanels(){
   	
   	$userpanels = Auth::user()->with('panels')->get();
   	
   	return response()->json(['success' => $userpanels], $this->successStatus);
   	
   }

   public function postPanel(Request $request, Panel $panel){

   	$validator = Validator::make($request->all(), Panel::$rules);
   	if ($validator->fails()){
   		$result['status']='fail';
   		$result['message']='Validation unseccessful';
   		return response()->json(['failed' => $result], $this->invalidStatus);
   	}

   	$panel=new Panel;
   	$panel->post=$request->get('post');
   	$panel->self=$request->get('self') === "self" ? "1" : "0";	
   	$panel->name=$request->get('name');
   	$panel->age=$request->get('age');
   	$panel->sex=$request->get('sex');
   	$panel->user_id= Auth::user()->first()->id;
   	$panel->height=$request->get('height');
   	$panel->weight=$request->get('weight');
   	$panel->religion=$request->get('religion');
   	$panel->complexion=$request->get('complexion');
   	$panel->matrimonial_condition=$request->get('matrimonial_condition');
   	$panel->blood_group=$request->get('blood_group');
   	$panel->obstruction=$request->get('obstruction');
   	$panel->current_address=$request->get('current_address');
   	$panel->raised_in=$request->get('raised_in');
   	$panel->nationality=$request->get('nationality');
   	$panel->profession=$request->get('profession');
   	$panel->occupation=$request->get('occupation');
   	$panel->designation=$request->get('designation');
   	$panel->degree=$request->get('degree');
   	$panel->institute=$request->get('institute');
   	$panel->siblings=$request->get('siblings');
   	$panel->picture=$request->get('picture');
   	$panel->organization=$request->get('organization');
   	$save=$panel->save();

   	if($save){
   		$result['status']='success';
   		$result['message']='Post created successfully';
   		return response()->json(['success' => $result], $this->successStatus);
   	}

   	$result['status']='fail';
   	$result['message']='Post could not be created';   	
   	return response()->json(['failed' => $result], $this->failedStatus);   	
   }

   public function postPanelRelative(Request $request, Panelrelative $panelrelative){
   	
   	$validator = Validator::make($request->all(), Panelrelative::$rules);
   	if ($validator->fails()){
   		$result['status']='fail';
   		$result['message']='Validation unseccessful';
   		return response()->json(['failed' => $result], $this->invalidStatus);
   	}

   	$panel = Panel::where('name',$request->get('panel_name'))->firstOrFail();

   	$panelrelative=new Panelrelative;
   	$panelrelative->name=$request->get('name');
   	$panelrelative->relation=$request->get('relation');
   	$panelrelative->profession=$request->get('profession');
   	$panelrelative->occupation=$request->get('occupation');
   	$panelrelative->designation=$request->get('designation');
   	$panelrelative->organization=$request->get('organization');
   	$panelrelative->panel()->associate($panel);
   	$save=$panelrelative->save();

   	if($save){
   		$result['status']='success';
   		$result['message']='Relateve added successfully';
   		return response()->json(['success' => $result], $this->successStatus);
   	}

   	$result['status']='fail';
   	$result['message']='Relateve could not be added';   	
   	return response()->json(['failed' => $result], $this->failedStatus);   	
   }
}

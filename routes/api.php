<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('login', 'API\PassportController@login');
 
Route::post('register', 'API\PassportController@register');
 
Route::group(['middleware' => 'auth:api'], function(){
 
	Route::post('get-details', 'API\PassportController@getDetails');
	Route::get('users', array('as' => 'users', 'uses' => 'API\PassportController@getUsers'));
	Route::get('panels', array('as' => 'panels', 'uses' => 'API\PassportController@getPanels'));
	Route::post('panels', array('as' => 'panels.post', 'uses' => 'API\PassportController@postPanel'));
	Route::post('relative', array('as' => 'relative.post', 'uses' => 'API\PassportController@postPanelRelative')); 
	Route::get('userpanels', array('as' => 'userpanels', 'uses' => 'API\PassportController@getUserPanels'));
});
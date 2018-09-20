<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Panel extends Model
{
	public static $rules = [
		'current_address' => 'required',
		'raised_in' => 'required',
		'age' => 'required|numeric|between:0,120',
		'sex' => 'required|in:male,female',
		'religion'=> 'required',
		'blood_group' => ['sometimes', 'regex:/^(A|B|AB|O)[-+]$/'],
		'nationality'=> 'required',
		'occupation'=> 'required',
		'degree' => 'required',
		'institute'=> 'required',
		'siblings' => 'required|numeric|between:0,20'
	];

	public function user()
	{
		return $this->belongsTo('App\User');
	}

	public function panelrelatives()
	{
		return $this->hasMany('App\Panelrelative');
	}
}

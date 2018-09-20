<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Panelrelative extends Model
{

	public static $rules = [
		'name' => 'required',
		'relation' => 'required',
		'occupation' => 'required',
	];

    public function panel()
    {
        return $this->belongsTo('App\Panel');
    }
}

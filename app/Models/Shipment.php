<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Shipment extends Model
{

    protected $primaryKey = 'id'; // or null

    public $incrementing = false;

    // In Laravel 6.0+ make sure to also set $keyType
    protected $keyType = 'string';
    /**
     * Get the services for the shipment.
     */
    public function services()
    {
        return $this->hasMany('App\Models\Service');
    }
    /**
     * Get the cargos for the shipment.
     */
    public function cargos()
    {
        return $this->hasMany('App\Models\Cargo');
    }
}

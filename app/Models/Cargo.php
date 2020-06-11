<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cargo extends Model
{
    protected $table = 'cargos';
    /**
     * Get the shipments that owns the service.
     */
    public function shipment()
    {
        return $this->belongsTo('App\Models\Shipment');
    }
}

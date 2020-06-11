<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    /**
     * Get the shipments that owns the service.
     */
    public function shipment()
    {
        return $this->belongsTo('App\Models\Shipment');
    }
}

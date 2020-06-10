<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Shipment as Shipment;

class Shipmentcontroller extends Controller
{
    /**
     * all shipments
     *
     * @return array
     */


    function allShipments()
    {

        $Shipments  = Shipment::paginate(3);
        return $Shipments;
    }
    /**
     * single Shipment
     *
     * @params id
     * @return object
     */
    function shipmentById($id)
    {

        $Shipment  = Shipment::find($id);
        return $Shipment;
    }
    /**
     *  Shipments order by Price
     *
     * 
     * @return array
     */
    function shipmentsOrderByPrice()
    {

        $Shipments  = Shipment::orderBy('price', 'desc')->paginate(3);
        return $Shipments;
    }

    /**
     *  Shipments order by Rating
     *
     * 
     * @return array
     */
    function shipmentsOrderByRating()
    {

        $Shipments  = Shipment::orderBy('rating', 'desc')->paginate(3);
        return $Shipments;
    }

    /**
     *  Shipments order by Rating
     *
     * 
     * @return array
     */
    function shipmentsOrderByName()
    {

        $Shipments  = Shipment::orderBy('name', 'desc')->paginate(3);
        return $Shipments;
    }
}

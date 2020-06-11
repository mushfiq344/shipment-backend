<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Shipment as Shipment;
use App\Models\Cargo as Cargo;
use App\Models\Service;
use App\Models\Services as Services;
use Illuminate\Support\Facades\Validator;

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

        $shipment = Shipment::find($id);
        return $shipment;
    }
    /**
     *  Shipments order by Price
     *
     * 
     * @return array
     */
    function shipmentsOrderById()
    {

        $Shipments  = Shipment::orderBy('id', 'desc')->paginate(3);
        return $Shipments;
    }

    /**
     *  Shipments order by Rating
     *
     * 
     * @return array
     */
    function shipmentsOrderByTotal()
    {

        $Shipments  = Shipment::orderBy('total', 'desc')->paginate(3);
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

    /**
     *  Shipments search by Name
     *
     * 
     * @return array
     */
    function shipmentsSearchByName($name = NULL)
    {
        if ($name != NULL || $name != '') {
            $Shipments  = Shipment::where("name", "like", $name . "%")->orderBy('name', 'desc')->paginate(3);
        } else {
            $Shipments  = Shipment::paginate(3);
        }

        return $Shipments;
    }


    /**
     *  loading the json data db
     * 
     *
     * 
     * @return array
     */
    function index()
    {

        $json = file_get_contents('https://raw.githubusercontent.com/simongomes/webable-javascript-challenge/master/db.json');
        $obj = (array) json_decode($json, true);

        foreach ($obj['shipments'] as $shipment) {
            $newShipment = new Shipment;
            $newShipment->id = $shipment['id'];
            $newShipment->name = $shipment['name'];
            $newShipment->mode = $shipment['mode'];
            $newShipment->type = $shipment['type'];
            $newShipment->destination = $shipment['destination'];
            $newShipment->origin = $shipment['origin'];
            $newShipment->total = $shipment['total'];
            $newShipment->status = $shipment['status'];
            $newShipment->userId = $shipment['userId'];
            $newShipment->save();

            foreach ($shipment['cargo'] as $cargo) {
                $newCargo = new Cargo();
                $newCargo->type = $cargo['type'];
                $newCargo->description = $cargo['description'];
                $newCargo->volume = $cargo['volume'];
                $newCargo->shipment_id
                    = $shipment['id'];
                $newCargo->save();
            }

            foreach ($shipment['services'] as $service) {
                $newService = new Service();
                $newCargo->type = $service['type'];
                $newService->shipment_id
                    = $shipment['id'];
                $newService->save();
            }
        }

        return "complete";
    }

    /**
     * update shipment info
     *
     * @param Request
     * @return object
     */
    public function updateShipment(Request $request)
    {
        // validator
        $validator = Validator::make(
            $request->all(),
            array(
                'name' => 'required',

            )
        );

        // for failed validation
        if ($validator->fails()) {
            return response()->json([$validator->messages()]);
        }

        $shipment = Shipment::find($request->id);
        $shipment->name = $request->name;
        $shipment->mode = $request->mode;
        $shipment->type = $request->type;
        $shipment->destination = $request->destination;
        $shipment->origin = $request->origin;
        $shipment->total = $request->total;
        $shipment->status = $request->status;
        $shipment->userId = $request->userId;
        $shipment->save();
        return response()->json([$request->all()]);
    }
}

<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Shipment;

class AllSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        // seeding shipment table
        for ($x = 0; $x <= 49; $x++) {

            $shipment = new Shipment;
            $shipment->name = Str::random(10);
            $shipment->price = rand(10, 100);
            $shipment->rating = rand(10, 100);
            $shipment->save();
        }
    }
}

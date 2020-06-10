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
        // adding total 50 users in user table
        // for ($x = 0; $x <= 49; $x++) {
        //     DB::table('users')->insert([
        //         'name' => Str::random(10),
        //         'email' => Str::random(10) . '@gmail.com',
        //         'Password' => bcrypt('12345678')
        //     ]);
        // }
        // adding total 10 movies in movies table  
        // for ($x = 0; $x <= 9; $x++) {
        //     DB::table('movies')->insert([
        //         'name' => Str::random(10),
        //         'description' => Str::random(10),
        //         'release' => date('Y-m-d'),
        //         'date' => date('Y-m-d'),
        //         "country" =>  Str::random(10),
        //         "photo" => Str::random(10)
        //     ]);
        // }

        // $usersIDs = DB::table('users')->pluck('id')->all();
        // $moviesIDs = DB::table('movies')->pluck('id')->all();

        // $faker = Faker::create();

        // // adding total 6 comments for each movie in comments table  
        // foreach ($moviesIDs as $movieID) {
        //     $userID = $faker->randomElement($usersIDs);
        //     $user =
        //         DB::table('users')->where('id', $userID)->pluck('name');

        //     for ($x = 0; $x <= 5; $x++) {
        //         DB::table('comments')->insert([
        //             'name' => $user[0],
        //             'movie_id' => $movieID,
        //             'user_id' =>  $userID,
        //             'comment' => Str::random(10)
        //         ]);
        //     }
        // }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $table = 'movies';

    /**
     * Get the comments for the movie.
     */
    public function comments()
    {
        return $this->hasMany('App\Models\Comment');
    }
}

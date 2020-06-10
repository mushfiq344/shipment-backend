<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    //
    protected $table = 'comments';
    /**
     * Get the post that owns the comment.
     */
    public function movie()
    {
        return $this->belongsTo('App\Models\Movie');
    }
}

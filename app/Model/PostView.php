<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PostView extends Model {
    protected $table = 'post_views';
    public $timestamps = false;
    protected $fillable = ['post_id', 'views'];
}

?>
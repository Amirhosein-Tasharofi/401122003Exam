<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class RelatedPost extends Model {
    protected $table = 'related_posts';
    public $timestamps = false;
    protected $fillable = ['post_1_id', 'post_2_id'];
}

?>
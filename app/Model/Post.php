<?php 
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Post extends Model{
    protected $table = 'posts';
    protected $fillable = ['user_id','title','body'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
}
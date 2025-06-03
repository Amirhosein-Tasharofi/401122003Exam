<?php 
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class User extends Model{
    protected $table = 'users';
    protected $fillable = ['name','email','password'];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function composite() {
        return $this->name . ' ' . $this->email;
    } 
      
}
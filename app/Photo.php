<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
   protected $upload="/images/";
   protected $fillable=[
       'path'
   ];
   
   public $with=['user'];


 public function user(){
        return $this->belongsTo('App\User');
    }
   /**
    * @return array
    */
    
    
   public function getPathAttribute($photo)
   {
      return $this->upload.$photo;
   }
}

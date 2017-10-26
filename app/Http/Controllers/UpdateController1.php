<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\teacher;

class UpdateController1 extends Controller
{
    public function index()
    {
        return view('update');
    }

    public function update1(Request $request)
    {
        $name = $request->name;
        $id = $request->id;
        $password = $request->password;
        $birthday = $request->birthday;
        $img = $request->img;
        //echo "$name";
        $file = $request->file('image');

//        //Display File Name
//        echo 'File Name: '.$file->getClientOriginalName();
//        echo '<br>';
//
//        //Display File Extension
//        echo 'File Extension: '.$file->getClientOriginalExtension();
//        echo '<br>';
//
//        //Display File Real Path
//        echo 'File Real Path: '.$file->getRealPath();
//        echo '<br>';
//
//        //Display File Size
//        echo 'File Size: '.$file->getSize();
//        echo '<br>';
//
//        //Display File Mime Type
//        echo 'File Mime Type: '.$file->getMimeType();

        function microtime_float()
        {
            list($usec, $sec) = explode(" ", microtime());
            return ($usec + $sec);
            //$temp = ($sec + $usec);
            //list($sec1, $usec1) = explode(".", microtime());
            //return ($sec1 + $usec1);
        }

        $filename = microtime_float();

        //Move Uploaded File
        $destinationPath = 'uploads';
        $filename = $filename.".".$file->getClientOriginalExtension();
        $file->move($destinationPath, $filename);

        $teacher = App\teacher::where('teacher_id', $id)->first();
        if($teacher == NULL){
            $teacher = new teacher();
        }
        if($name == NULL){
            $teacher->name = $name;
        }
        if($password == NULL){
            $teacher->password = $password;
        }
        if($img == NULL){
            $teacher->img = "/uploads/".$filename;
        }
        $teacher->teacher_bday = date('Y-m-d');
        $teacher->save();
        return view('update');
    }
}

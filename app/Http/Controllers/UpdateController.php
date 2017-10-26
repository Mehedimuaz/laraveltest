<?php
namespace App\Http\Controllers;
    use App\teacher;
    use Illuminate\Http\Request;

class UpdateController extends Controller
{
    public function index()
    {
        return view('update');
    }

    public function update(Request $request)
    {
        $name = $request->name;
        $id = $request->id;
        $password = $request->password;
        //$birthday = $request->birthday;
        $img = $request->img;
        //echo "$name";
        $file = $request->file('img');
        var_dump($request->id);

        function microtime_float()
        {
            list($usec, $sec) = explode(" ", microtime());
            return ($usec + $sec);
        }

        $filename = microtime_float();

        //Move Uploaded File
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

        $destinationPath = 'uploads';
        if($file!=NULL){
            $filename = $filename.".".$file->getClientOriginalExtension();
            $file->move($destinationPath, $filename);
        }
        $teacher = teacher::where('teacher_id', $id)->first();
        if($teacher == NULL){
            $teacher = new teacher();
        }
        if($name != NULL){
            $teacher->teacher_name = $name;
        }
        if($id != NULL){
            $teacher->teacher_id = $id;
        }
        if($password != NULL){
            $teacher->password = md5($password);
        }
        if($file != NULL){
            $teacher->img = "/uploads/".$filename;
        }
        $teacher->teacher_bday = date('Y-m-d');
        $teacher->save();
        return view('update');
    }
}

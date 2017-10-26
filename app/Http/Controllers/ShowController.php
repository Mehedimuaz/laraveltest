<?php
namespace App\Http\Controllers;
use App\teacher;
use Illuminate\Support\Facades\View;

class ShowController extends Controller
{
    public function index()
    {

    }
    public function show()
    {
        $teachers = teacher::all();
        /*foreach ($teachers as $teacher){
            if($teacher->teacher_id){
                $teacher->value = 2;
                echo "$teacher->value";
            }
        }*/
        return View::make('dump', compact('teachers'));
    }
}

<?php
namespace App\Http\Controllers;
use App\question;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;

class UpdateQuestionController extends Controller
{
    public function index()
    {
        $cat_a = question::where('question_id', 'LIKE', 'a%')->get();
        $cat_b = question::where('question_id', 'LIKE', 'b%')->get();
        $cat_c = question::where('question_id', 'LIKE', 'c%')->get();
        $cat_d = question::where('question_id', 'LIKE', 'd%')->get();
        $cat_e = question::where('question_id', 'LIKE', 'e%')->get();
        $data = array('cat_a' => $cat_a, 'cat_b' => $cat_b, 'cat_c' => $cat_c, 'cat_d' => $cat_d, 'cat_e' => $cat_e);
        return View::make('UpdateQuestion', compact('data'));
    }

    public function insert(Request $request)
    {
        $prefix = $request->prefix;
        $question_text = $request->question_text;
        $id_format = $prefix."%";

        $question = new question();
        $prev_id = question::where('question_id', 'LIKE', $id_format)->max('question_id');
        $next_id = 100001;
        if($prev_id != NULL){
            $prev_id_int = intval(substr($prev_id, 1, 6));
            $next_id = (string) ($prev_id_int + 1);
        }
        $question->question_id = $prefix.$next_id;
        $question->question_text = $question_text;
        $question->save();
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        question::where('question_id', $request->question_id)->delete();
        return redirect()->back();
    }
}

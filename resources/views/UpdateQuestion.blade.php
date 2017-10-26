<html>
<?php
    $cat_a = $data['cat_a'];
    $cat_b = $data['cat_b'];
    $cat_c = $data['cat_c'];
    $cat_d = $data['cat_d'];
    $cat_e = $data['cat_e'];
?>
<body>
<h3>Add Question</h3>
<form action="/UpdateQuestion" method="POST">
    {{csrf_field()}}
    <label>Question Text</label>
    <input type="text" name="question_text" required>
    <label>Question Category</label>
    <select name="prefix">
        <option value="n">--Select One--</option>
        <option value="a">a</option>
        <option value="b">b</option>
        <option value="c">c</option>
        <option value="d">d</option>
        <option value="e">e</option>
    </select>
    <button type="submit">Add</button>
</form>
<h2>Questions</h2>
<h4>Category A: Student Information (Partial)</h4>
<table width="100%"  border="1px">
    @foreach($cat_a as $cata)
        <tr>
            <td>{{$cata->question_text}}</td>
            <td>{{$cata->question_id}}</td>
            <form action="/UpdateQuestion" method="POST">
                {{method_field('delete')}}
                {{csrf_field()}}
                <input type="hidden" name="question_id" value="{{$cata->question_id}}">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
    @endforeach
</table>

<h4>Category B: Workplace History</h4>
<table width="100%"  border="1px">
    @foreach($cat_b as $catb)
        <tr>
            <td>{{$catb->question_text}}</td>
            <td>{{$catb->question_id}}</td>
            <form action="/UpdateQuestion" method="POST">
                {{method_field('delete')}}
                {{csrf_field()}}
                <input type="hidden" name="question_id" value="{{$catb->question_id}}">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
    @endforeach
</table>

<h4>Category C: Interests Profile (part-1)</h4>
<table width="100%"  border="1px">
    @foreach($cat_c as $catc)
        <tr>
            <td>{{$catc->question_text}}</td>
            <td>{{$catc->question_id}}</td>
            <form action="/UpdateQuestion" method="POST">
                {{method_field('delete')}}
                {{csrf_field()}}
                <input type="hidden" name="question_id" value="{{$catc->question_id}}">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
    @endforeach
</table>

<h4>Category D: Interests Profile (part-2)</h4>
<table width="100%"  border="1px">
    @foreach($cat_d as $catd)
        <tr>
            <td>{{$catd->question_text}}</td>
            <td>{{$catd->question_id}}</td>
            <form action="/UpdateQuestion" method="POST">
                {{method_field('delete')}}
                {{csrf_field()}}
                <input type="hidden" name="question_id" value="{{$catd->question_id}}">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
    @endforeach
</table>

<h4>Category E: Open Response</h4>
<table width="100%"  border="1px">
    @foreach($cat_e as $cate)
        <tr>
            <td>{{$cate->question_text}}</td>
            <td>{{$cate->question_id}}</td>
            <form action="/UpdateQuestion" method="POST">
                {{method_field('delete')}}
                {{csrf_field()}}
                <input type="hidden" name="question_id" value="{{$cate->question_id}}">
                <td><button type="submit">Delete</button></td>
            </form>
        </tr>
    @endforeach
</table>
</body>
</html>
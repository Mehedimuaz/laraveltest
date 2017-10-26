<!DOCTYPE html>
<html>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>BDay</td>
        <td>image</td>
    </tr>
    <?php
        $teacher_data = array();
        foreach ($teachers as $teacher){
            $teacher_data[$teacher->teacher_id]['id'] = $teacher->teacher_id;
            $teacher_data[$teacher->teacher_id]['name'] = $teacher->teacher_name;
            $teacher_data[$teacher->teacher_id]['bday'] = $teacher->teacher_bday;
            $teacher_data[$teacher->teacher_id]['img'] = $teacher->img;

        }
    ?>
    @foreach($teachers as $teacher)
        <tr>
            <td>{{$teacher_data[$teacher->teacher_id]['id']}}</td>
            <td>{{$teacher_data[$teacher->teacher_id]['name']}}</td>
            <td>{{$teacher_data[$teacher->teacher_id]['bday']}}</td>
            <td><img src="{{$teacher_data[$teacher->teacher_id]['img']}}"></td>
        </tr>
    @endforeach
</table>

</body>
</html>
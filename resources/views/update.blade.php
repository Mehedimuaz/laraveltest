<!DOCTYPE html>
<html>
<body>
    <form action="/update/update" method="POST" enctype="multipart/form-data">
        {{csrf_field()}}
        <label>Name:</label>
        <input type="text" name="name">
        <label>Password:</label>
        <input type="text" name="password">
        <label>Birthday:</label>
        <input type="text" name="birthday">
        <label>ID:</label>
        <input type="text" name="id">
        <label>Upload image:</label>
        <input type="file" name="img">
        <button type="submit">Update</button>
    </form>
</body>
</html>
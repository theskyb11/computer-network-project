<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Add a new User</h1>

<form action="/useraddform" method="post" enctype="multipart/form-data">
    <label for="name">Enter Name</label>
    <input type="text" name="name" id="name" required><br>

    <label for="email">Enter Email</label>
    <input type="email" name="email" id="email" required><br>

    <label for="phoneno">Enter Phone No</label>
    <input type="number" name="phoneno" id="phoneno" required>

    <label for="img">Upload Image</label>
    <input type="file" value="Choose File" accept="image/png, image/jpeg" name="img" id="img" required>

    <button type="submit">Add User</button>
</form>

</body>
</html>
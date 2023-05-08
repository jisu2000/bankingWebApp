<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <title>new account</title>

</head>

<body>
    <div class="container text-center mt-4">
        <h1 style="color: blue;">New Savings Account</h1>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


    <div class="container">




        <form action="addaccountprocess" method="post" enctype="multipart/form-data">
            <div class="container">
                <div class="container text-center">
                    <img src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
                        class="rounded-circle" alt="Profile Picture" style="width: 10vw;">
                </div>



            </div>
            <div class="form-group">



                <div class="position-relative">
                    <div class="form-group"></div>
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter name" name="uname" required>
                </div>
                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="uemail" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter password" name="upass" required>
                </div>
                <div class="form-group">
                    <label for="Contact No">Contact No:</label>
                    <input type="text" class="form-control" id="contact" placeholder="Enter Contact Number" name="ucont" required>
                </div>
              

                <div class="form-group">
                    <label for="exampleFormControlTextarea1" required>Address</label>

                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" name="uadd"></textarea>
                  </div>
                <div class="form-group">
                    <label for="image">Upload Image:</label>
                    <input type="file" class="form-control-file" id="image" name="image">
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-outline-success">Submit</button>
                </div>

               
        </form>

    </div>
</body>

</html>
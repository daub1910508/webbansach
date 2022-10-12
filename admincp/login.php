<?php
    session_start();
    include('config/config.php');
    if(isset($_POST['dangnhap'])){
        $taikhoan = $_POST['username'];
        $matkhau = md5($_POST['password']);
        $sql = "SELECT * FROM tbl_admin WHERE username='".$taikhoan."' AND password='".$matkhau."' LIMIT 1";
        $row = mysqli_query($mysqli,$sql);
        $count = mysqli_num_rows($row);
        if($count>0){
            $_SESSION['dangnhap'] = $taikhoan;
            header("Location:index.php");
        }else{
            echo '<script>alert("tài khoản hoặc mật khẩu không đúng, vui lòng nhập lại.");</script>';
            header("Location:login.php");
        }
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập admincp</title>
    <style type="text/css">
    body {
        font-family: "Open Sans", sans-serif;
        height: 100vh;
        background: url("https://hanoispiritofplace.com/wp-content/uploads/2018/04/hinh-nen-may-tinh-2.jpg") 50% fixed;
        background-size: cover;
    }

    .wrapper-login {
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: center;
        width: 100%;
        min-height: 100%;
        padding: 20px;
        background: rgba(darken(primary, 40%), 0.85);
        color: white;
    }

    table.table-login {
        width: 100%;
    }

    table.table-login tr {
        padding: 5px;
    }

    b {
        color: black;
    }

    form {
        width: 500px;
        height: 125px;
        background: white;
    }
    </style>
</head>

<body>
    <div class="wrapper-login">
        <form action="" method="POST">
            <table border="1" class="table-login" style="text-align: center;border-collapse: collapse;">
                <tr>
                    <td colspan="2"><b>Đăng nhập admin</b></td>
                </tr>
                <tr>
                    <td><b>Tài khoản</b></td>
                    <td><input type="text" name="username" placeholder="Username"></td>
                </tr>
                <tr>
                    <td><b>Mật khẩu</b></td>
                    <td><input type="password" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="dangnhap" value="Đăng nhập"><br><a href="#">Quên mật
                            khẩu?</a></td>

                </tr>
            </table>
        </form>
    </div>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>

</html>
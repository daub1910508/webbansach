<?php
    if(isset($_POST['dangnhap'])){
        $email = $_POST['email'];
        $matkhau = md5($_POST['matkhau']);
        $sql = "SELECT * FROM tbl_dangky WHERE email='".$email."' AND matkhau='".$matkhau."' LIMIT 1";
        $row = mysqli_query($mysqli,$sql);
        $count = mysqli_num_rows($row);
       
        if($count>0){
            $row_data = mysqli_fetch_array($row);
            $_SESSION['dangky'] = $row_data['tenkhachhang'];
            $_SESSION['email'] = $row_data['email'];
            $_SESSION['id_khachhang'] = $row_data['id_dangky'];
            header('Location:index.php?quanly=giohang');
        }else{
            echo '<script>alert("tài khoản hoặc mật khẩu không đúng, vui lòng nhập lại.");</script>';

        }
    }
?>
<h2>Đăng nhập</h2>
<form action="" method="POST">
    <table border="1" class="table-login" autocomplete="off" style="text-align: center;border-collapse: collapse;">
        <tr>
            <td colspan="2">Đăng nhập khách hàng</td>
        </tr>
        <tr>
            <td>Tài khoản</td>
            <td><input type="text" name="email" placeholder="email..."></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" name="matkhau" placeholder="mật khẩu..."></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="dangnhap" value="Đăng nhập"></td>
        </tr>
    </table>
</form>
<br>
<style>
form {
    margin-left: 270px;
}

table {
    background: #CCFFFF;
    width: 500px;
    height: 100px;
}

h2 {
    text-align: center;
}
</style>
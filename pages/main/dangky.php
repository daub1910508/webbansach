<?php
    if(isset($_POST['dangky'])){
        $tenkhachhang = $_POST['hovaten'];
        $email = $_POST['email'];
        $matkhau = md5($_POST['matkhau']);
        $diachi = $_POST['diachi'];
        $dienthoai = $_POST['dienthoai'];
        $sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,matkhau,diachi,dienthoai) 
        VALUE('".$tenkhachhang."','".$email."','".$matkhau."','".$diachi."','".$dienthoai."') ");
        if($sql_dangky){
           echo '<script>alert("Bạn đã đăng ký thành công.");</script>';
            $_SESSION['dangky'] = $tenkhachhang;
            $_SESSION['email'] = $email;
            $_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
            header('Location:index.php');
        }
    }
?>
<h2>Đăng ký thành viên</h2>
<style type="text/css">
table.dangky tr td {
    padding: 3px;
}

form {
    width: 1200px;
    margin-left: 18%;
}

h2 {
    text-align: center;
}
</style>
<form action="" method="POST">
    <table class="dangky" border="1" width="50%" style="border-collapse: collapse;">
        <tr>
            <td>Họ và tên</td>
            <td><input type="text" size="50" name="hovaten"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" size="50" name="email"></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="text" size="50" name="matkhau"></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><input type="text" size="50" name="diachi"></td>
        </tr>
        <tr>
            <td>Điện thoại</td>
            <td><input type="text" size="50" name="dienthoai"></td>
        </tr>
        <tr>

            <td colspan="2" style="text-align: center;">
                <input type="submit" name="dangky" value="Đăng ký">
                <br>
                <a href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản?</a>
            </td>
        </tr>
    </table>
</form>
<br>
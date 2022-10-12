<?php
    if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
        unset($_SESSION['dangnhap']);
        header('Location:login.php');
    }
?>
<p style="text-align: right;"><a href="index.php?dangxuat=1">Đăng xuất:<?php if(isset($_SESSION['dangnhap'])){
        echo '<span style="color: red;">'.$_SESSION['dangnhap'].'</span>';
    } ?></a></p>

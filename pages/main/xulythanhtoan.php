<?php
    session_start();
    include("../../admincp/config/config.php");
    require('../../mail/sendmail.php');
    require('../../carbon/autoload.php');
    use Carbon\Carbon;
    use Carbon\CarbonInterval;
    $now = Carbon::now('Asia/Ho_Chi_Minh');
    $id_khachhang = $_SESSION['id_khachhang'];
    $code_order = rand(0,9999);
    $cart_payment = $_POST['payment'];
    ///lay id thong tin van chuyen
    $id_dangky = $_SESSION['id_khachhang'];
    $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shopping WHERE id_dangky='$id_dangky' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $id_shopping = $row_get_vanchuyen['id_shopping'];
    ///insert cart
    $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_data,cart_payment,cart_shopping) VALUE('".$id_khachhang."','".$code_order."',1,
    '".$now."','".$cart_payment."','".$id_shopping."')";
    $cart_query = mysqli_query($mysqli,$insert_cart);
     if($cart_query){
        //them gio hang chi tiet
      foreach($_SESSION['cart'] as $key => $value){
          $id_sanpham = $value['id'];
      $soluong = $value['soluong'];
         $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
        mysqli_query($mysqli,$insert_order_details);
       }
       $tieude = "Đặt hàng website thuongmaidientu.net thành công!";
       $noidung = "<p>Cảm ơn quý khách đã đặt hàng của chúng tôi với mã đơn hàng:".$code_order."</p>";
    
       $maildathang = $_SESSION['email'];
     // $mail = new Mailer();
     //  $mail->dathangmail($tieude,$noidung,$maildathang);
   }
   unset($_SESSION['cart']);
   header('Location:../../index.php?quanly=donhangdadat');


?>
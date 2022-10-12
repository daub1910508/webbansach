<b>
    <p style="margin-left: 10px;">Thông tin vận chuyển:</p>
</b>
<div class="container">
    <!-- Responsive Arrow Progress Bar -->
    <div class="arrow-steps clearfix" style="margin-left: 30%;">
        <div class="step done"> <span> <a href="index.php?quanly=giohang">Giỏ hàng</a></span> </div>
        <div class="step current"> <span><a href="index.php?quanly=vanchuyen">Vận chuyển</a></span> </div>
        <div class="step"> <span><a href="index.php?quanly=thongtinthanhtoan">Thanh toán</a><span> </div>
        <div class="step"> <span><a href="index.php?quanly=donhangdadat">Xác nhận</a><span> </div>
    </div>
    <h4 style="margin-left: 10px;">Thông tin vận chuyển</h4>
    <?php
    if(isset($_POST['themvanchuyen'])){
      $ten = $_POST['ten'];
      $dienthoai = $_POST['dienthoai'];
      $diachi = $_POST['diachi'];
      $ghichu = $_POST['ghichu'];
      $id_dangky = $_SESSION['id_khachhang'];
      $sql_them_vanchuyen = mysqli_query($mysqli,"INSERT INTO tbl_shopping(ten,dienthoai,diachi,ghichu,id_dangky) VALUES('$ten','$dienthoai','$diachi','$ghichu','$id_dangky')");
      if($sql_them_vanchuyen){
        echo '<script>alert("Thêm vận chuyển thành công.");</script>';
      }
    }elseif(isset($_POST['capnhatvanchuyen'])){
      $ten = $_POST['ten'];
      $dienthoai = $_POST['dienthoai'];
      $diachi = $_POST['diachi'];
      $ghichu = $_POST['ghichu'];
      $id_dangky = $_SESSION['id_khachhang'];
      $sql_update_vanchuyen = mysqli_query($mysqli,"UPDATE tbl_shopping SET ten='$ten',dienthoai='$dienthoai',diachi='$diachi',ghichu='$ghichu',id_dangky='$id_dangky' WHERE id_dangky='$id_dangky' ");
      if( $sql_update_vanchuyen){
        echo '<script>alert("Cập nhật vận chuyển thành công.");</script>';
      }
    
    }
  ?>
    <div class="row">
        <?php
     $id_dangky = $_SESSION['id_khachhang'];
     $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shopping WHERE id_dangky='$id_dangky' LIMIT 1");
     $count = mysqli_num_rows($sql_get_vanchuyen);
     if($count>0){
      $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
      $ten = $row_get_vanchuyen['ten'];
      $dienthoai = $row_get_vanchuyen['dienthoai'];
      $diachi = $row_get_vanchuyen['diachi'];
      $ghichu = $row_get_vanchuyen['ghichu'];
     }else{
      $ten = '';
      $dienthoai = '';
      $diachi = '';
      $ghichu = '';
     }
    ?>

        <div class="col-md-12">
            <form action="" autocomplete="off" method="POST" style="margin-left: 10px;">
                <div class="form-group">
                    <label for="email">Họ và tên:&nbsp;</label>
                    <input type="text" name="ten" value="<?php echo  $ten  ?>" class="form-control" placeholder="..">
                </div>
                <div class="form-group">
                    <label for="pwd">Điện thoại:</label>
                    <input type="text" name="dienthoai" class="form-control" value="<?php echo  $dienthoai  ?>"
                        placeholder="..">
                </div>
                <div class="form-group">
                    <label for="pwd">Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="diachi" class="form-control" value="<?php echo  $diachi  ?>"
                        placeholder="..">
                </div>
                <div class="form-group">
                    <label for="pwd">Ghi chú:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="ghichu" class="form-control" value="<?php echo  $ghichu  ?>"
                        placeholder="..">
                </div>
                <?php
  if($ten=='' && $dienthoai==''){
?>
                <br>
                <button type="submit" name="themvanchuyen" class="btn btn-primary">Thêm vận chuyển</button>

                <?php
  }elseif($ten!=='' && $dienthoai!==''){
?>

                <p style="text-align: center;"><button type="submit" name="capnhatvanchuyen" class="btn btn-success">Cập
                        nhật vận chuyển</button></p>

                <?php
  }
  ?>
            </form>
        </div>
        <br>
        <p style="text-align: center;"><button> <a href="index.php?quanly=thongtinthanhtoan">Thanh toán</a></button></p>
    </div>

    <style>
    input.form-control {
        text-align: center;
        width: 80%;
        margin-left: 20px;
        margin-bottom: 13px;
    }

    .btn-primary {
        color: #fff;
        background-color: #007bff;
        border-color: #007bff;
        width: 16%;
        margin-left: 23px;
    }

    p a {
        color: black;
        font-size: 17px;
        text-decoration: none;

    }

    p a:hover {
        color: #FFFFFF;
        text-decoration: none;
    }

    button {6666666666666666666666666666666666666
        background: #ccffff;
        border-radius: 2px;
        width: 140px;
        height: 35px;
        border: 1px solid #ccc;
        margin-left: 650px;
        margin-bottom: -40px;
    }

    button:hover {
        background: #CF111a;
    }
    </style>
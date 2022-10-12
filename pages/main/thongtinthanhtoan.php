<b>
    <p style="margin-left: 10px;">Hình thức thanh toán:</p>
</b>
<div class="container">
    <!-- Responsive Arrow Progress Bar -->
    <div class="arrow-steps clearfix" style="margin-left: 30%;">
        <div class="step done"> <span> <a href="index.php?quanly=giohang">Giỏ hàng</a></span> </div>
        <div class="step done"> <span><a href="index.php?quanly=vanchuyen">Vận chuyển</a></span> </div>
        <div class="step current"> <span><a href="index.php?quanly=thongtinthanhtoan">Thanh toán</a><span> </div>
        <div class="step"> <span><a href="index.php?quanly=donhangdadat">Xác nhận</a><span> </div>
    </div>
    <form action="pages/main/xulythanhtoan.php" method="POST">
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
            <div class="col-md-8" style="margin-left: 10px;">
                <h4>Thông tin vận chuyển:</h4>
                <ul>
                    <li>Họ và tên vận chuyển: <b><?php echo $ten ?></b> </li>
                    <li>Số điện thoại: <b><?php echo $dienthoai ?></b></li>
                    <li>Địa chỉ: <b><?php echo $diachi ?></b></li>
                    <li>Ghi chú: <b><?php echo $ghichu ?></b></li>
                </ul>
                <br>
            </div>
            <div class="col-md-4" style="margin-left: 10px;">
                <h4>Phương thức thanh toán:</h4>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios1" value="Tiền mặt"
                        checked>
                    <label class="form-check-label" for="exampleRadios1">
                        <b>Tiền mặt</b>
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios2"
                        value="Chuyển khoản">
                    <label class="form-check-label" for="exampleRadios2">
                        <b>Chuyển khoản</b>
                    </label>
                </div>
                <br>
                <input type="submit" value="Xác nhận" name="thaytoanngay" class="btn btn-danger">

            </div>
        </div>

</div>
</form>
<style>
.col-md-8 {
    height: auto;
    width: 40%;
    margin-top: 5px;
    margin-left: 5px;
    float: left;
}

.col-md-4 {
    height: auto;
    width: 25%;
    margin-top: 5px;
    margin-left: 5px;
    float: right;
}
</style>
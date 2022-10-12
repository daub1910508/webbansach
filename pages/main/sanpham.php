<br>
<?php
          $sql_chitiet = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc
           AND tbl_sanpham.id_sanpham='$_GET[id]'  LIMIT 1";
          $query_chitiet = mysqli_query($mysqli,$sql_chitiet);
          while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="wrapper_chitiet">
    <div class="hinhanh_sanpham">
        <img width="100%" src="admincp/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
    </div>
    <form method="POST" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?>">
        <div class="chitiet_sanpham">
            <h2 style="margin: 0;">Sản phẩm: <?php echo $row_chitiet['tensanpham']?></h2>
            <p>Mã sản phẩm: <?php echo $row_chitiet['masp']?></p>
            <p>Loại sản phẩm: <?php echo $row_chitiet['tendanhmuc'] ?></p>
            <p>Số lượng: <?php echo $row_chitiet['soluong'] ?></p>
            <p>Giá sản phẩm: <?php echo number_format($row_chitiet['giasp'],0,',','.').'vnđ'  ?></p>
            <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
        </div>
    </form>
</div>
<div class="clear"></div>
<div class="tabs">
    <ul id="tabs-nav">
        <li><a href="#tab1">Thông tin sản phẩm</a></li>
        <li><a href="#tab2">Nội dung sản phẩm</a></li>

    </ul> <!-- END tabs-nav -->
    <div id="tabs-content">
        <div id="tab1" class="tab-content">
            <?php echo $row_chitiet['tomtat'] ?>
        </div>
        <div id="tab2" class="tab-content">
            <?php echo $row_chitiet['noidung'] ?>
        </div>

    </div> <!-- END tabs-content -->
</div> <!-- END tabs -->
<?php
}
?>
<style>
h3 {
    text-align: center;
}
</style>
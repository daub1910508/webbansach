<?php
if(isset($_POST['timkiem'])){
    $tukhoa = $_POST['tukhoa'];
}
    $sql_pro = "SELECT * FROM tbl_sanpham WHERE  tbl_sanpham.tensanpham  LIKE '%".$tukhoa."%' ";
        $query_pro = mysqli_query($mysqli,$sql_pro);
?>
<h3 style="margin-left: 15px;">Từ khóa tìm kiếm:<?php echo $_POST['tukhoa']; ?> </h3>
               <ul class="product-list">
                   <?php
                   while($row = mysqli_fetch_array($query_pro)){
                   ?>
                        <li>
                        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                            <img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
                            <p class="title_product">Tên sản phẩm: <?php echo $row['tensanpham'] ?></p>
                            <p class="price_product"><?php echo number_format($row['giasp'],0,',','.').'vnđ'  ?></p>
                       </a>
                   </li>
                   <?php
                   }
                   ?>
               </ul>
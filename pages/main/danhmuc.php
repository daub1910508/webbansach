<?php
          $sql_pro = "SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhmuc='$_GET[id]'
           ORDER BY id_sanpham DESC";
          $query_pro = mysqli_query($mysqli,$sql_pro);
//get danh muc
$sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id_danhmuc='$_GET[id]'
LIMIT 1";
$query_cate = mysqli_query($mysqli,$sql_cate);
 $row_stile = mysqli_fetch_array($query_cate);
?>

<h3 style="margin-left: 10px;">Danh mục sản phẩm: <?php echo $row_stile['tendanhmuc'] ?> </h3>
<ul class="product-list">
    <?php 
                   while($row_pro = mysqli_fetch_array($query_pro)){
                   ?>
    <li>
        <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanpham'] ?>">
            <img src="admincp/modules/quanlysp/uploads/<?php echo $row_pro['hinhanh'] ?>">
            <p style="margin-left: 10px;">Sản phẩm:<?php echo $row_pro['tensanpham'] ?></p>
            <p class="price_product"><?php echo number_format($row_pro['giasp'],0,',','.').'vnđ'  ?></p>
        </a>
    </li>
    <?php
                   }
                   ?>
</ul>
<style>
p {
    color: black;
}

p:hover {
    color: #f5a623;
}

h3 {
    font-size: 30px;
    color: #000000;

}




h2 {
    margin-left: 20px;
    padding-bottom: 30px;
}

ul.tintuc {
    padding: 0;
    margin: 0;
    list-style: none;
    width: 100%;
    margin-left: 29px;
}

ul.tintuc li img {
    height: 200px;
}

ul.tintuc li {
    width: 25%;
    border: 1px solid #ccc;
    margin: 20px;
    float: left;
    height: 290px;
    background: #CCCCCC;
}

ul.tintuc li a {
    text-decoration: none;
    font-size: 11px;
    color: #222222;
}

ul.tintuc li a:hover {
    color: #3399FF;

}

ul.tintuc li img {
    width: 100%;

}
</style>
<?php
          $sql_bv = "SELECT * FROM tbl_baiviet WHERE tbl_baiviet.id_danhmuc='$_GET[id]'
           ORDER BY id_baiviet DESC";
          $query_bv = mysqli_query($mysqli,$sql_bv);
//get danh muc
$sql_cate = "SELECT * FROM tbl_danhmucbaiviet WHERE tbl_danhmucbaiviet.id_danhmucbaiviet='$_GET[id]'
LIMIT 1";
$query_cate = mysqli_query($mysqli,$sql_cate);
 $row_stile = mysqli_fetch_array($query_cate);
?>
<h3>Danh mục Tin tức: <span
        style="text-align: center;text-tramform: uppercase;"><?php echo $row_stile['tendanhmucbaiviet'] ?> </span></h3>
<ul class="tintuc">
    <?php 
                   while($row_bv = mysqli_fetch_array($query_bv)){
                   ?>
    <li>
        <a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id_baiviet'] ?>">
            <img src="admincp/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh'] ?>">
            <h2 class="title_product"> <?php echo $row_bv['tenbaiviet'] ?></h2>
        </a>

    </li>
    <?php
                   }
                   ?>
</ul>
<style>
h3 {
    font-size: 30px;
    color: #000000;

}




h2 {
    margin-left: 10px;
    padding-bottom: 30px;
    font-size: 20px;
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
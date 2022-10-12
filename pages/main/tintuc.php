<h3 style="text-align: center; " text-tramform: uppercase;>Tin tức mới nhất</h3>
<?php
          $sql_bv = "SELECT * FROM tbl_baiviet WHERE tinhtrang=1 ORDER BY id_baiviet DESC";
          $query_bv = mysqli_query($mysqli,$sql_bv);

?>

<ul class="tintuc">
    <?php 
                   while($row_bv = mysqli_fetch_array($query_bv)){
                   ?>
    <li>
        <a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id_baiviet'] ?>">
            <img src="admincp/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh'] ?>">
            <h2 class="title_product"><?php echo $row_bv['tenbaiviet'] ?></h2>
        </a>

    </li>
    <?php
                   }
                   ?>
</ul>
<style>
h2 {
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
    height: 150px;
}

ul.tintuc li {
    width: 45%;
    border: 1px solid #000;
    margin: 5px;
    float: left;
    height: 350px;
    background: greenyellow;
}

ul.tintuc li a {
    text-decoration: none;
}

ul.tintuc li img {
    width: 100%;
}

h3 {
    font-size: 30px;
    color: #000000;

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
    color: #f5a623;

}

ul.tintuc li img {
    width: 100%;

}
</style>
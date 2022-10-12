<h3 style="text-align: center; " text-tramform: uppercase;>Liên hệ với chúng tôi thông qua</h3>
<?php 
        $sql_lh = "SELECT * FROM tbl_lienhe WHERE id_lienhe=1";
        $query_lh = mysqli_query($mysqli,$sql_lh);
?>

<?php
  while($dong = mysqli_fetch_array($query_lh)){
   ?>

<p><?php echo $dong['thongtinlienhe']  ?></p>

<?php
  }
  ?>
<style>
p {
    text-align: center;
}
</style>
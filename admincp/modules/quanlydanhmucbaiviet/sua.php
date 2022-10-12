<?php 
        $sql_sua_danhmucbaiviet = "SELECT * FROM tbl_danhmucbaiviet WHERE id_danhmucbaiviet='$_GET[iddanhmucbaiviet]' LIMIT  1";
        $query_sua_danhmucbaiviet = mysqli_query($mysqli,$sql_sua_danhmucbaiviet);
?>
<P>sửa danh mục sản phẩm</p>
<table border="1" width="50%;" style="border-collapse: collapse;">
<form method="POST" action="modules/quanlydanhmucbaiviet/xuly.php?iddanhmucbaiviet=<?php echo $_GET['iddanhmucbaiviet'] ?>">
  <?php
  while($dong = mysqli_fetch_array($query_sua_danhmucbaiviet)){
   ?>
<tr>
      <td>Tên danh mục bài viết</td>
      <td><input type="text" value="<?php echo $dong['tendanhmucbaiviet'] ?>" name="tendanhmucbaiviet"></td>
  </tr>
  <tr>
      <td>Thứ tự</td>
      <td><input type="text" value="<?php echo $dong['thutu'] ?>" name="thutu"></td>
  </tr>
  <tr>
      <td colspan="2"><input type="submit" name="suadanhmuc" value="sửa danh mục sản phẩm"></td>
  </tr>
  <?php 
  }
  ?>
</form>
</table>
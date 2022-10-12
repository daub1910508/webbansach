<?php 
        $sql_lietke_danhmucbaiviet = "SELECT * FROM tbl_danhmucbaiviet ORDER BY thutu DESC";
        $query_lietke_danhmucbaiviet = mysqli_query($mysqli,$sql_lietke_danhmucbaiviet);
?>
<P>Liệt kê danh mục bài viết</p>
<table style="width:100%;" border="1" style="border-collapse: collapse;" >
<tr>
    <th>Id</th>
    <th>Tên danh mục</th>
    <th>Quản lý</th>
</tr>
<?php 
$i = 0;
while($row = mysqli_fetch_array($query_lietke_danhmucbaiviet)){
    $i++;
?>
<tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tendanhmucbaiviet'] ?></td>
    <td>
        <a href="modules/quanlydanhmucbaiviet/xuly.php?iddanhmucbaiviet=<?php echo $row['id_danhmucbaiviet'] ?>">xóa</a> | 
        <a href="?action=quanlydanhmucbaiviet&query=sua&iddanhmucbaiviet=<?php echo $row['id_danhmucbaiviet'] ?>">sửa</a>
    </td>
</tr>
<?php
}
?>
</table>
<div class="clear"></div>
</div>
<div class="footer">
    <div class="noi-dung about">
        <h2>Admin</h2>
        <p>Nguyễn Hoàng Đấu</p>
    </div>

    <div class="noi-dung links">
        <h2>Đường Dẫn</h2>
        <ul>
            <li><a href="../index.php">Về Trang Chủ Index</a></li>
        </ul>
    </div>

    <div class="noi-dung contact">
        <h2>Thông Tin</h2>
        <ul class="info">
            <li>
                <span><i class="fa fa-map-marker"></i></span>
                <span>Địa chỉ: Quốc lộ 1A ấp Hòa Thạnh, xã Long Điền, huyện Đông Hải, tỉnh Bạc Liêu <br>
                </span>
            </li>
            <li>
                <span><i class="fa fa-phone"></i></span>
                <p><a href="">Số ĐT: 0945275090</a>
                </p>
            </li>
            <li>
                <span><i class="fa fa-envelope"></i></span>
                <p><a href="#">Gmail: nguyenhoangdau11@gmail.com</a></p>
            </li>
        </ul>
    </div>

</div>
<style>
.main {
    padding-bottom: 100px;
}


.footer {
    padding-top: 10px;
    border: 1px solid #000;
    height: 150px;
    width: 100%;
    clear: left;
    position: relative;
    height: 240px;
    float: left;
    background: #111;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.footer h2 {
    color: #FFFAF0;
}

.footer p {
    color: #FFFAF0;
}

.footer {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    flex-direction: row;
}

.footer .noi-dung {
    margin-right: 10px;
    margin: 0px;
    padding: 0px;
}

.footer .noi-dung p {
    margin: 5px;
    font-size: 20px;
}

.footer .noi-dung.about h2 {
    margin: 20px;
}

.footer .noi-dung.about {

    width: 15%;
    padding-left: 40px;

}

.footer .noi-dung.about h2 {
    position: relative;
    color: #fff;
    font-weight: 500;
    margin-bottom: 15px;
}

.footer .noi-dung.about h2:before {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 50px;
    height: 2px;
    background: #f00;
}

.footer .noi-dung.about p {
    color: #999;
}

.social-icon {
    margin-top: 20px;
    display: flex;
}

.social-icon li {
    list-style: none;
}

.social-icon li a {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: #222;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 10px;
    text-decoration: none;
    border-radius: 10px;
}

.social-icon li a:hover {
    background: #f00;
}

.social-icon li a .fa {
    color: #fff;
    font-size: 20px;
}

.links h2 {
    position: relative;
    color: #fff;
    font-weight: 500;
    margin-bottom: 15px;
}

.links h2 {
    position: relative;
    color: #fff;
    font-weight: 500;
    margin-bottom: 15px;
}

.links h2::before {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 50px;
    height: 2px;
    background: #f00;
}

.links {
    position: relative;
    width: 25%;
}

.links ul li {
    list-style: none;
}

.links ul li a {
    color: #999;
    text-decoration: none;
    margin-bottom: 10px;
    display: inline-block;
}

.links ul li a:hover {
    color: #fff;
}

.contact h2 {
    position: relative;
    color: #fff;
    font-weight: 500;
    margin-bottom: 15px;
}

.contact h2::before {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 50px;
    height: 2px;
    background: #f00;
}

.contact {
    width: calc(35% - 60px);
    margin-right: 0 !important;
}

.contact .info {
    position: relative;
}

.contact .info li {
    display: flex;
    margin-bottom: 16px;
}

.contact .info li span:nth-child(1) {
    color: #fff;
    font-size: 20px;
    margin-right: 10px;
}

.contact .info li span {
    color: #999;

}

.contact .info li a {
    color: #999;
    text-decoration: none;
}

.btn {
    display: inline-block;
    background: transparent;
    color: inherit;
    font: inherit;
    border: 0;
    outline: 0;
    padding: 0;
    margin-top: 16px;
    transition: all 200ms ease-in;
    cursor: pointer;
}

.btn--primary {
    background: #222;
    color: #fff;
    box-shadow: 0 0 10px 2px rgba(0, 0, 0, .1);
    border-radius: 2px;
}
</style>
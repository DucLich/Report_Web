<div class="row mb">
    <div class="boxtrai mr">
        <div class="row mb">
            <div class="boxtitle">Quên mật khẩu</div>
            <div class="row boxcontent formtaikhoan">
                <form action="index.php?act=quenmk" method="post">
                    <div class="row mb10">
                        Email <br />
                        <input type="email" name="email" id="">
                    </div>
                    <input type="submit" value="Gửi" name="guiemail">
                    <input type="reset" value="Nhập lại">
                </form>
                <h2 class="thongbao">
                    <?php
                    if (isset($thongbao) && ($thongbao != "")) {
                        echo $thongbao;
                    }
                    ?>
                </h2>
            </div>
        </div>
    </div>
    <div class="boxphai">
        <?php
        include "view/boxright.php";
        ?>
    </div>
</div>
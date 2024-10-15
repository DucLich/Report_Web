<script type="text/javascript">
    function validateRegistration() {
        var email = document.forms["registrationForm"]["email"].value;
        var username = document.forms["registrationForm"]["user"].value;
        var password = document.forms["registrationForm"]["pass"].value;

        if (email == "") {
            document.getElementById("error-email").innerText = "Vui lòng nhập địa chỉ email";
            return false;
        } else {
            document.getElementById("error-email").innerText = ""; // Xóa thông báo lỗi nếu đã nhập email
        }
        if (username == "") {
            document.getElementById("error-username").innerText = "Vui lòng nhập tên đăng nhập";
            return false;
        } else {
            document.getElementById("error-username").innerText = "";
        }
        if (username.length < 8 || username.length > 15) {
            document.getElementById("error-username").innerText = "Tên đăng nhập có độ dài phải từ 8 đến 15 ký tự";
            return false;
        } else {
            document.getElementById("error-username").innerText = "";
        }

        if (password == "") {
            document.getElementById("error-password").innerText = "Vui lòng nhập mật khẩu";
            return false;
        } else {
            document.getElementById("error-password").innerText = "";
        }

        if (password.length < 8 || password.length > 15) {
            document.getElementById("error-password").innerText = "Mật khẩu có độ dài từ 8 đến 15 ký tự";
            return false;
        } else {
            document.getElementById("error-password").innerText = "";
        }
    }
</script>

<div class="row mb">
    <div class="boxtrai mr">
        <div class="row mb">
            <div class="boxtitle">Đăng ký thành viên</div>
            <div class="row boxcontent formtaikhoan">
                <form name="registrationForm" action="index.php?act=dangky" method="post">
                    <div class="row mb10">
                        Email <br />
                        <input type="email" name="email" id="">
                        <div id="error-email" style="color: red;"></div> <!-- Thêm phần tử cho thông báo -->
                    </div>
                    <div class="row mb10">
                        Tên đăng nhập <br />
                        <input type="text" name="user" id="username">
                        <div id="error-username" style="color: red;"></div> <!-- Thêm phần tử cho thông báo -->
                    </div>
                    <div class="row mb10">
                        Mật khẩu <br />
                        <input type="password" name="pass" id="">
                        <div id="error-password" style="color: red;"></div> <!-- Thêm phần tử cho thông báo -->
                    </div>

                    <input type="submit" value="Đăng ký" name="dangky" onclick="return validateRegistration()">
                    <input type="reset" value="Nhập lại">
                </form>
                <h2 class="thongbao">
                    <?php
                    if (isset($thongbao) && ($thongbao != "")) {
                        echo "<span style='color: green;'>$thongbao</span>";
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
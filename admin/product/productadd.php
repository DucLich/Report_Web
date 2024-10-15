<script type="text/javascript">
function validateProductInput() {
    var productName = document.forms["productForm"]["product_name"].value;
    var productPrice = document.forms["productForm"]["product_price"].value;
    var productImg = document.forms["productForm"]["product_img"].value;

    if (productName == "") {
        document.getElementById("error-product-name").innerText = "Vui lòng nhập tên sản phẩm";
        return false;
    } else {
        document.getElementById("error-product-name").innerText = "";
    }

    if (productPrice == "") {
        document.getElementById("error-product-price").innerText = "Vui lòng nhập giá sản phẩm";
        return false;
    } else {
        document.getElementById("error-product-price").innerText = "";
    }
}
</script>

<div class="row">
    <div class="row frmtitle">
        <h1>THÊM MỚI SẢN PHẨM</h1>
    </div>
    <div class="row frmcontent">
        <form name="productForm" action="index.php?act=productadd" method="post" enctype="multipart/form-data">
            <div class="rowadmin mb mb5">
                <div>Tên loại sản phẩm <span class="required">*</span></div>
                <select class="shad2" name="cartegory_id">
                    <?php
                    foreach ($cartegorylist as $cartegory) {
                        extract($cartegory);
                        echo '<option value=' . $cartegory_id . '>' . $cartegory_name . '</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="rowadmin mb mb5">
                <div>Tên thương hiệu <span class="required">*</span></div>
                <select class="shad2" name="brand_id">
                    <?php
                    foreach ($brandlist as $brand) {
                        extract($brand);
                        echo '<option value=' . $brand_id . '>' . $brand_name . '</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="rowadmin mb5">
                <div>Tên sản phẩm <span class="required">*</span></div>
                <input class="shad2" type="text" name="product_name" />
                <br>
            </div>
            <div class="mb10" id="error-product-name" style="color: red; text-align: center;"></div>
            <div class="rowadmin mb mb5">
                <div>Giá sản phẩm <span class="required">*</span></div>
                <input class="shad2" type="text" name="product_price" />
                <br>
            </div>
            <div class="mb10" id="error-product-price" style="color: red; text-align: center;"></div>
            <div class="row mb5">
                Hình ảnh </br>
                <input type="file" name="product_img" />
                <div id="error-product-img" style="color: red;"></div>
            </div>
            <div class="mb10" id="error-product-img" style="color: red; text-align: center;"></div>
            <div class="row mb5">
                Mô tả <br>
                <textarea class="shad2 mb5" name="product_desc" id="" cols="44" rows="10"></textarea>
            </div>
            <div class="row  mb5">
                <input class="shad2" type="submit" name="add" value="THÊM MỚI" onclick="return validateProductInput()">
                <input class="shad2" type="reset" value="NHẬP LẠI">
                <a href="index.php?act=productlist">
                    <input class="shad2" type="button" value="DANH SÁCH">
                </a>
            </div>
        </form>
    </div>
</div>
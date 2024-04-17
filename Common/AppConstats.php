<?php


class AppConstats
{
    const BASE_URL = "http://localhost/phpmyadmin/AppleStore";

    const  Category_CONTROLLER = "CategoryController";

    const  PRODUCT_CONTROLLER = "ProductController";

    const  USER_CONTROLLER = "UserController";

    const  CART_CONTROLLER = "CartController";

    const  ORDER_CONTROLLER = "OrderController";

    const  Index_CONTROLLER = "Controller";

    public static function GET_SEEVER_ROOT()
    {
        return $_SERVER["DOCUMENT_ROOT"];
    }

    public static function GET_APP_ROOT_PATH()
    {
         return $_SERVER["DOCUMENT_ROOT"]."";
    }
}
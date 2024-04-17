<?php

if (isset($_SESSION['user'])) {
    if ($_SESSION['user']['role'] == 0) {
        header("location: ../");
    }
}elseif (!isset($_SESSION['user'])){
    header("location: ../");
}

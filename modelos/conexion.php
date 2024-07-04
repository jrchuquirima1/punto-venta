<?php
class conexion{
    public static function conectar (){
        $con = new PDO ("mysql:host=localhost;dbname=punto_venta1;charset=utf8", "root", "");
        return $con;
    }
}
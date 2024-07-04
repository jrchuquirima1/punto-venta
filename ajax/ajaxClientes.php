<?php
require_once "../controladores/ctrlClientes.php";
require_once "../modelos/mdlClientes.php";
class ajaxCliente{
    public $id_clientes;


    public function modificarCliente(){
        $respuesta=controladorClientes::ctrlCargarClientes($this->id_clientes);
        echo json_encode($respuesta);
    }
}
if(isset($_POST["id_cliente"])){
    $objAjaxCliente =new ajaxCliente();
    $objAjaxCliente->id_clientes=$_POST¨["id_cliente"];
    switch($_POST["operacion"]){
        case "Editar":
            $objAjaxCliente->modificarCliente();
        break;   
    }
}

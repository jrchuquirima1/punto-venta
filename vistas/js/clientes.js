$(".btnClientes").click(function () {
    var id_cliente = $(this).attr("id_cliente");
    //console.log("prueba",respuesta);
    var data = new FormData();
    data.append("id_cliente", id_cliente)
    data.append("operacion", "Editar");
    $.ajax({
        url:"ajax/ajaxClientes.php",
        method:"POST",
        data:data,
        cache:false,
        contentType:false,
        proccessData:false,
        dataType:"json",
        succes:function(respuesta){
            console.log("Json",respuesta);
        }
    });

});
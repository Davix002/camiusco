$(document).ready(function () {
    // var selected_class = "active";

    var selected_class = "selected";
    $("#success-alert").hide();
    $("#error-alert").hide();
    var table = $('#categoryTable').DataTable({
        "ajax": "../ws/category",
        "columns": [{
            "data": "id"
        }, {
            "data": "nombre"
        }, {
            "data": "descripcion"
        }, {
            "data":"imagen",
            "render": function (data) {
                return '<img src="'+data+'" style="max-width: 100%;height: auto;"/>';}
        }, {
            "data": "publicado"
        }]
    });

    $('#categoryTable tbody').on('click', 'tr', function () {
        if ($(this).hasClass(selected_class)) {
            $(this).removeClass(selected_class);
        } else {
            table.$('tr.' + selected_class).removeClass(selected_class);
            $(this).addClass(selected_class);
        }
    });

    function ajaxCallRequest(f_method, f_url, f_data) {
        var f_contentType = 'application/json; charset=UTF-8';
        $.ajax({
            url: f_url,
            type: f_method,
            contentType: f_contentType,
            dataType: 'json',
            data: f_data,
            error: function (data) {
                var title = "Error !";
                var message = "Error al ejecutar la operación";
                $("#error_title").text(title);
                $("#error_message").text(message);
                $("#categoryModal .close").click();
                $("#error-alert").fadeTo(2000, 500).slideUp(500, function () {
                    $("#error-alert").slideUp(500);
                });
            },
            success: function (data) {
                var jsonResult = JSON.stringify(data);
                var parsed = JSON.parse(jsonResult);
                var success = parsed.success;
                var message = parsed.mensaje
                var title = "Success !";
                if (success == false) {
                    title = "Error !";
                }
                $("#success_title").text(title);
                $("#success_message").text(message);
                $("#categoryModal .close").click();
                $("#success-alert").fadeTo(2000, 500).slideUp(500, function () {
                    $("#success-alert").slideUp(500);
                });
                table.ajax.reload();
            }
        });
    }

    $("#sendJSON").click(function (event) {
        event.preventDefault();
        var form = $('#categoryForm');
        var method = form.attr('method');
        var url = form.attr('action');
        if (method != "POST") {
            var id = document.getElementById("id").value;
            url = url + id;
        }
        var jsonData = {};
        $.each($(form).serializeArray(), function () {
            jsonData[this.name] = this.value;
        });
        var data = JSON.stringify(jsonData);
        console.log(data);

        ajaxCallRequest(method, url, data);
    });
    
    function editar(method) {
        var id = 0;
        var nombre="";
        var descripcion="";
        var imagen="";
        var publicado="";

        if (method != "POST") {
            var data = table.rows('.' + selected_class).data()[0];
            if (data == undefined) {
                var title = "Error !";
                var operacion = "";
                if (method == "PUT") {
                    operacion = "modificar.";
                }
                else {
                    operacion = "eliminar.";
                }
                var message = "Por favor seleccione el registro que desea ";
                message += operacion;
                $("#error_title").text(title);
                $("#error_message").text(message);
                $("#error-alert").fadeTo(2000, 500).slideUp(500, function () {
                    $("#error-alert").slideUp(500);
                });
                return;
            }
            else {
                id=data.id;
                nombre=data.nombre;
                descripcion=data.descripcion;
                imagen=data.imagen;
                publicado=data.publicado;
            }
        }

        if (method == "POST") {
            $("#sendJSON").html('Adicionar');
        }
        if (method == "PUT") {
            $("#sendJSON").html('Modificar');
        }
        if (method == "DELETE") {
            $("#sendJSON").html('Eliminar');
        }

        $("#categoryForm").attr("method", method);
        document.getElementById("id").value = id;
        document.getElementById("nombre").value = nombre;
        document.getElementById("descripcion").value = descripcion;
        document.getElementById("imagen").value = imagen;
        document.getElementById("publicado").value = publicado;
        $('#categoryModal').modal('show');
    }
    
    $("#adicionar").click(function (event) {
        editar("POST");
    });
    $("#modificar").click(function (event) {
        editar("PUT");
    });
    $('#eliminar').click(function () {
        editar("DELETE");
    });
});
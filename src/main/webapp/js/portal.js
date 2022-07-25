function getCategories(category_id) {
    $.getJSON("../ws/portal/categories", function (result) {
        data = result.data;
        $("#div_categories").empty();
        for (var row = 0; row < data.length; row = row + 1) {
            var id = data[row].id;
            var nombre = data[row].nombre;
            var descripcion = data[row].descripcion;
            var imagen = data[row].imagen;
            var publicado = data[row].publicado;
            var item_class = "list-group-item";
            if (id == category_id) {
                item_class = "list-group-item active";
            }
            $("#div_categories").append("<a href='javascript:getProducts(" + id
                + ");' id='category_" + id + "' class='" + item_class + "'>"
                + nombre + "</a>");
        }
    });
}

function getProducts(category_id) {
    /* $('.list-group-item').removeClass('active').addClass('');
    $("#category_" + category_id).addClass('active'); */
    $.getJSON("../ws/portal/products/" + category_id, function (result) {
        data = result.data;
        $("#div_producto").empty();
        for (var row = 0; row < data.length; row = row + 1) {

            var id = data[row].id;
            var nombre = data[row].nombre;
            var publicado = data[row].publicado;
            var imagen = data[row].imagen;
            var precio = data[row].precio;
            var descripcion = data[row].descripcion;
            var url = "../product-single.jsp?id=" + id;
            var item ='<div class="col-md-4">';
            item+='<div class="product-item" id="'+id+'" onclick="getModal('+id+')">';
            item+='<div class="product-thumb">';
            /* item+='<span class="bage">Sale</span>'; */
            item+='<img id="imagenProducto" class="img-responsive" src="'+imagen+'" alt="product-img" />';
            item+='<div class="preview-meta">';
            item+='<ul>';
            item+='<li>';
            item+='<span  data-toggle="modal" data-target="#product-modal">';
            item+='<i class="tf-ion-ios-search-strong"></i>';
            item+='</span>';
            item+='</li>';
            item+='<li>';
            item+='<a href="#!" ><i class="tf-ion-ios-heart"></i></a>';
            item+='</li>';
            item+='<li>';
            item+='<a href="#!"><i class="tf-ion-android-cart"></i></a>';
            item+='</li>';
            item+='</ul>';
            item+='</div>';
            item+='</div>';
            item+='<div class="product-content">';
            item+='<h4><a href="'+url+'">'+nombre+'</a></h4>';
            item+='<p class="price">'+precio+'</p>';
            item+='<p id="descripProducto" hidden>'+descripcion+'</p>';
            item+='</div>';
            item+='</div>';
            item+='</div>';

            $("#div_producto").append(item);
        }
    });
}     


function getModal(product_id) {

        var imagenProducto=$("#"+product_id+" .product-thumb img").attr("src");
        $("#imagenModal").attr("src", imagenProducto);

        var nombreProducto=$("#"+product_id+" .product-content h4 a").html();
        $("#tituloModal").html(nombreProducto);

        var precioProducto=$("#"+product_id+" .product-content .price").html();
        $("#precioProducto").html(precioProducto);
        
        var descripProducto=$("#"+product_id+" .product-content #descripProducto").html();
        $("#descripModalProducto").html(descripProducto);

}    
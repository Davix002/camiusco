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
    $('.list-group-item').removeClass('active').addClass('');
    $("#category_" + category_id).addClass('active');
    $.getJSON("../ws/portal/products/" + category_id, function (result) {
        data = result.data;
        $("#div_products").empty();
        for (var row = 0; row < data.length; row = row + 1) {

            var id = data[row].id;
            var nombre = data[row].nombre;
            var publicado = data[row].publicado;
            var imagen = data[row].imagen;
            var precio = data[row].precio;
            var descripcion = data[row].descripcion;
            var url = "../item.jsp?id=" + id;
            var item = '<div class="col-lg-4 col-md-6 mb-4">';
            item += '<div class="card h-100">';
            item += '<a id="link_title" href="' + url + '">';
            item += '<img class="card-img-top" src="../fotos/' + imagen + '" alt="">';
            item += '</a>';
            item += '<div class="card-body">';
            item += '<h4 class="card-title">';
            item += '<a href="' + url + '">' + nombre + '</a>';
            item += '</h4>';
            item += '<h5>$' + precio + '</h5>';
            item += '<p class="card-text">' + descripcion + '</p>';
            item += '</div>';
            item += '<div class="card-footer">';
            item += '<small class="text-muted">';
            item += '&#9733; &#9733; &#9733; &#9733;&#9734;';
            item += '</small>';
            item += '</div>';
            item += '</div>';
            item += '</div>';
            $("#div_products").append(item);
        }
    });
}      
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
            item+='<img id="imagenProducto" class="img-responsive" style="height:50vh;object-fit:cover;" src="'+imagen+'" alt="product-img" />';
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
            item+='<p id="categoriaProducto" hidden>'+category_id+'</p>';
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

        var categoria_id=$("#"+product_id+" .product-content #categoriaProducto").html();
       $("#botonDetalles").attr("href", "product-single.jsp?categoria_id="+categoria_id+"&producto_id="+product_id);
}    

function getProductDetallado(category_id,product_id) {
    /* $('.list-group-item').removeClass('active').addClass('');
    $("#category_" + category_id).addClass('active'); */
    $.getJSON("../ws/portal/products/" + category_id, function (result) {
        data = result.data;
        $("#div_producto").empty();
        for (var row = 0; row < data.length; row = row + 1) {

            if(data[row].id==product_id){
                var id = data[row].id;
                var nombre = data[row].nombre;
                var publicado = data[row].publicado;
                var color = data[row].color;
                var imagen = data[row].imagen;
                var precio = data[row].precio;
                var descripcion = data[row].descripcion;
                var cantidad = data[row].existencias;
            }

            }

            if(id==undefined){
                var id = data[1].id;
                var nombre = data[1].nombre;
                var publicado = data[1].publicado;
                var color = data[1].color;
                var imagen = data[1].imagen;
                var precio = data[1].precio;
                var descripcion = data[1].descripcion;
                var cantidad = data[1].existencias;
            }

            var item =`<div class="col-md-4">
            <div class="container">
		
		<div class="row mt-20">
			<div class="col-md-5">
				<div class="single-product-slider">
					<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
						<div class='carousel-outer'>
							<div class='carousel-inner '>
								<div class='item active'>`;
									item+='<img src="'+imagen+'" alt="" data-zoom-image="'+imagen+'" />';
                                    item+=`</div>
								
							</div>
							
							<a class='left carousel-control' href='#carousel-custom' data-slide='prev'>
								<i class="tf-ion-ios-arrow-left"></i>
							</a>
							<a class='right carousel-control' href='#carousel-custom' data-slide='next'>
								<i class="tf-ion-ios-arrow-right"></i>
							</a>
						</div>
						
						<ol class='carousel-indicators mCustomScrollbar meartlab'>
							<li data-target='#carousel-custom' data-slide-to='0' class='active'>`;
                            item+='<img src="'+imagen+'" alt="" />';
							item+=`</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="single-product-details">`;
                item+='<h2>'+nombre+'</h2>';
                item+='<p class="product-price">'+precio+'</p>';
					
                item+='<p class="product-description mt-20">';
                item+=descripcion;
                item+=`</p>

					<div class="color-swatches">
						<span>color:</span>
						<ul>
							<li>`;
                            item+='<a  href="#!" class="swatch-'+color+'"></a>';
							item+=`</li>
						</ul>
					</div>
					<div class="product-size">
						<span>Talla:</span>
						<select class="form-control">
							<option>S</option>
							<option>M</option>
							<option>L</option>
							<option>XL</option>
						</select>
					</div>

					<div class="product-quantity">
						<span>Cantidad:</span>
						<div class="product-quantity-slider">
							<input id="product-quantity" type="text" value="1" name="product-quantity">
						</div>
					</div>

					<div class="product-category">
						<span>Categorias:</span>
						<ul>`;
							item+='<li><a href="shop.jsp?categoria='+category_id+'">'+category_id+'</a></li>';
						item+=`</ul>
					</div>`;
					item+='<a href="cart.jsp" class="btn btn-main mt-20">Add To Cart</a>';
                    item+=`</div>
			</div>
		</div>
	</div>`;

    $("#div_producto").append(item);

        
    });
}     
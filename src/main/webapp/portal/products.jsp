<div class="container">
		
		<%-- Aqui se llaman todos los productos --%>
		<div class="row" id="div_producto"></div>

		<!-- Modal -->
		<div class="modal product-modal fade" id="product-modal">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<i class="tf-ion-close"></i>
			</button>
		  	<div class="modal-dialog " role="document">
		    	<div class="modal-content">
			      	<div class="modal-body">

						<%-- llamar desde aqui al producto --%>
			        	<div class="row">
			        		<div class="col-md-8 col-sm-6 col-xs-12">
			        			<div class="modal-image">
				        			<img id="imagenModal" class="img-responsive" src="../images/shop/products/modal-product.jpg" alt="product-img" />
			        			</div>
			        		</div>
			        		<div class="col-md-4 col-sm-6 col-xs-12">
			        			<div class="product-short-details">
			        				<h2 id="tituloModal" class="product-title">GM Pendant, Basalt Grey</h2>
			        				<p id="precioProducto" class="product-price">$200</p>
			        				<p id="descripModalProducto" class="product-short-description">
			        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
			        				</p>
			        				<a href="cart.jsp" class="btn btn-main">A&ntildeadir al carrito</a>
			        				<a href="product-single.jsp" class="btn btn-transparent">Ver detalles del producto</a>
			        			</div>
			        		</div>

			        	</div>


			        </div>
		    	</div>
		  	</div>
		</div><!-- /.modal -->

		</div>
	</div>
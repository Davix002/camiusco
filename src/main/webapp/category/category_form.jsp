<!-- Modal -->
<div class="modal fade" id="categoryModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="categoryForm" method="POST" action="../ws/category/">
			<input type="hidden" id="id" name="id" value="" />
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="myModalLabel">A&ntildeadir categoria</h5>
					
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="name">Nombre</label> <input type="text"
							class="form-control" id="nombre" name="nombre" placeholder="">
					</div>
					<div class="form-group">
						<label for="icon">Descripcion</label> <input type="text"
							class="form-control" id="descripcion" name="descripcion" placeholder="">
					</div>
					<div class="form-group">
						<label for="icon">Imagen</label> <input type="text"
							class="form-control" id="imagen" name="imagen" placeholder="">
					</div>
					<div class="form-group">
						<label for="publicado">Publicado</label>
						<!-- selected -->
						<select id="publicado" name="publicado" class="form-control">
							<option value="1">Publicado</option>
							<option value="0">No publicado</option>
						</select>
					</div>
				</div>
				<!-- end modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-primary" id="sendJSON">Guardar cambios</button>
				</div>
			</div>
			<!-- end modal-content -->
		</form>
	</div>
</div>
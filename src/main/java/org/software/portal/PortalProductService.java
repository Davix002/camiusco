package org.software.portal;

//import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
//import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import org.software.product.Product;
import org.software.product.ProductList;
import org.software.util.DataBase;

@Path("/portal")
public class PortalProductService {
	@GET
	@Path("/products/{categoria}")
	@Produces("application/json")
	public ProductList getProducts(@PathParam(value = "categoria") int categoria) {
		ArrayList<Product> productList = new ArrayList<Product>();
		DataBase database = new DataBase();
		Connection connection1 = null;
		Statement statement1 = null;
		ResultSet rs1 = null;
		String sql = "";
		try {
			connection1 = database.getConnection("guest");
			statement1 = connection1.createStatement();
			sql = "select * from producto where categoria_id = " + categoria;
			sql += " and publicado = 1 order by nombre";
			rs1 = statement1.executeQuery(sql);
			while (rs1.next()) {

				long id=rs1.getLong("id");
				String nombre=rs1.getString("nombre");
				long precio=rs1.getLong("precio");
				String talla= rs1.getString("talla");
				String color=rs1.getString("color");
				String descripcion=rs1.getString("descripcion");
				String imagen=rs1.getString("imagen");
				long rating_cache=rs1.getLong("rating_cache");
				int rating_count = rs1.getInt("rating_count");
				int publicado = rs1.getInt("publicado");
				int existencias = rs1.getInt("existencias");
				String comentarios=rs1.getString("comentarios");
				int categoria_id=rs1.getInt("categoria_id");

				Product product = new Product();
				product.setId(id);
				product.setNombre(nombre);
				product.setPrecio(precio);
				product.setTalla(talla);
				product.setColor(color);
				product.setDescripcion(descripcion);
				product.setImagen(imagen);
				product.setRating_cache(rating_cache);
				product.setRating_count(rating_count);
				product.setPublicado(publicado);
				product.setExistencias(existencias);
				product.setComentarios(comentarios);
				product.setCategoria_id(categoria_id);

				productList.add(product);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(rs1);
			database.closeObject(statement1);
			database.closeObject(connection1);
		}
		return new ProductList(productList);
	}
}
package org.software.portal;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import org.software.category.Category;
import org.software.category.CategoryList;
import org.software.util.DataBase;

@Path("/portal")
public class PortalCategoryService {
	@GET
	@Path("/categories")
	@Produces("application/json")
	public CategoryList read() {
		ArrayList<Category> categoryList = new ArrayList<Category>();
		DataBase database = new DataBase();
		Connection connection1 = null;
		Statement statement1 = null;
		ResultSet rs1 = null;
		String sql = "";
		try {
			connection1 = database.getConnection("guest");
			statement1 = connection1.createStatement();
			sql = "select * from categoria where publicado = 1";
			sql += " order by nombre";
			rs1 = statement1.executeQuery(sql);
			while (rs1.next()) {
				int id = rs1.getInt("id");
				String nombre = rs1.getString("nombre");
				String descripcion = rs1.getString("descripcion");
				String imagen = rs1.getString("imagen");
				int publicado = rs1.getInt("publicado");
				Category category = new Category();
				category.setId(id);
				category.setNombre(nombre);
				category.setDescripcion(descripcion);
				category.setImagen(imagen);
				category.setPublicado(publicado);
				categoryList.add(category);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(rs1);
			database.closeObject(statement1);
			database.closeObject(connection1);
		}
		return new CategoryList(categoryList);
	}
}
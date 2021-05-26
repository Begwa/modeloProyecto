//package
package cl.inacap.dispositivosTecnologicos.dto;
//imports
import java.io.Serializable;
import javax.persistence.*;
/**
 * Entity implementation class for Entity: Producto
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name="Producto.findAll", query = "SELECT p FROM Producto p")
})
//class
public class Producto implements Serializable {
	//variables
	private static final long serialVersionUID = 1L;
	@Id
	private int idproducto;
	private String nombre;
	private String descripcion;
	private int precio;
	private int stock;
	private int stockminimo;
	private String idcategoria;
	//super
	public Producto() {
		
	}
	//toString
	public Producto(int idproducto, String nombre, String descripcion, int precio, int stock, int stockminimo, String idcategoria) {
		//this
		this.idproducto = idproducto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
		this.stock = stock;
		this.stockminimo = stockminimo;
		this.idcategoria = idcategoria;		
	}
	//getters and setters
	public int getIdproducto() {
		return idproducto;
	}
	public void setIdProducto(int idproducto) {
		this.idproducto = idproducto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getStockminimo() {
		return stockminimo;
	}
	public void setStockminimo(int stockminimo) {
		this.stockminimo = stockminimo;
	}
	public String getIdcategoria(String idcategoria) {
		return idcategoria;
	}
	public void setIdcategoria(String idcategoria) {
		this.idcategoria = idcategoria;
	}
	//object
	public Object getidcategoria() {
		// TODO Auto-generated method stub
		return null;
	}
}
//End
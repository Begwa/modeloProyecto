//package
package cl.inacap.dispositivosTecnologicos.dto;
//imports
import java.io.Serializable;
import javax.persistence.*;
/**
 * Entity implementation class for Entity: Categoria
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name="Categoria.findAll", query = "SELECT c FROM Categoria c")
})
//class
public class Categoria implements Serializable {
	//variables
	private static final long serialVersionUID = 1L;
	@Id
	private String idcategoria;
	private String categoria;
	private String detalle;
	//super
	public Categoria() {
		
	}
	//toString
	public Categoria(String idcategoria, String categoria, String detalle) {
		//this
		this.idcategoria = idcategoria;
		this.categoria = categoria;
		this.detalle = detalle;
	}
    //getters and setters
	public String getIdcategoria() {
		return idcategoria;
	}
	public void setIdcategoria(String idcategoria) {
		this.idcategoria = idcategoria;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getDetalle() {
		return detalle;
	}
	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}
}
//End
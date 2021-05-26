//package
package cl.inacap.dispositivosTecnologicos.dto;
//imports
import java.io.Serializable;
import javax.persistence.*;
/**
 * Entity implementation class for Entity: Usuario
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name= "Usuario.findAll", query = "SELECT u FROM Usuario u")
})
//class
public class Usuario implements Serializable {
	//variables
	private static final long serialVersionUID = 1L;
	@Id
	private String idusuario;
	private String nombreu;
	private String apellido;
	private String correo;
	private String password;
	private String tipousuario;
	//super
	public Usuario() {
		
	}
	//toString
	public Usuario(String idusuario, String nombreu, String apellido, String correo, String password, String tipousuario ) {
		//this
		this.idusuario = idusuario;
		this.nombreu = nombreu;
		this.apellido = apellido;
		this.correo = correo;
		this.password = password;
		this.tipousuario = tipousuario;
	}
    //getters and setters
	public String getIdusuario() {
		return idusuario;
	}
	public void setIdusuario(String idusuario) {
		this.idusuario = idusuario;
	}
	public String getNombreu() {
		return nombreu;
	}
	public void setNombreu(String nombreu) {
		this.nombreu = nombreu;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTipousuario() {
		return tipousuario;
	}
	public void setTipousuario(String tipousuario) {
		this.tipousuario = tipousuario;
	}
}
//End
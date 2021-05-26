//package
package cl.inacap.dispositivosTecnologicos.dao;
//imports
import java.util.List;
import javax.ejb.Local;
import cl.inacap.dispositivosTecnologicos.dto.Categoria;
import cl.inacap.dispositivosTecnologicos.dto.Producto;
import cl.inacap.dispositivosTecnologicos.dto.Usuario;
@Local
//interface
public interface ServicioLocal {
	//Product
	public List<Producto> getAll();
	public String add(Producto p);
	public void delete(int idproducto);
	public void update(Producto pr);
	//Category
	public List<Categoria> getAll1();
    public String add(Categoria c);
	public void delete(String idcategoria);
	public void update(Categoria cu);
	//User
	public List<Usuario> getAll2();
	public String add(Usuario u);
	public void Borrar(String idusuario);
	public void update(Usuario us);
}
//End
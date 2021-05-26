//package
package cl.inacap.dispositivosTecnologicos.dao;
//imports
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import cl.inacap.dispositivosTecnologicos.dto.Categoria;
import cl.inacap.dispositivosTecnologicos.dto.Producto;
import cl.inacap.dispositivosTecnologicos.dto.Usuario;
/**
 * Session Bean implementation class Servicio
 */
@Stateless
@LocalBean
//class
public class Servicio implements ServicioLocal {
	//Entity
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dispositivosTecnologicosModel");
    /**
     * Default constructor. 
     */
	//super
    public Servicio() {
        
    }
    //Start Product
	@Override
	//List Product
	public List<Producto> getAll() {
		EntityManager em = this.emf.createEntityManager();
		try {
			List<Producto> productos = em.createNamedQuery("Producto.findAll",Producto.class).getResultList();
			return productos;
		}
		catch(Exception e) {
			return null;
		}
		finally {
			em.close();
		}
	}
	@Override
	//Add Product
	public String add(Producto p) {
		EntityManager em = this.emf.createEntityManager();
		try {
			em.persist(p);
			em.flush();
			return "Registro de Producto ingresado correctamente";
		}catch (Exception e) {
			return "Intente con otros valores porfavor";
		}finally {
			em.close();
		}
	}
	@Override
	//Delete Product
	public void delete(int idproducto) {
		EntityManager em = this.emf.createEntityManager();
		Producto p = new Producto();
		try {
			p = em.find(Producto.class,idproducto);
			em.remove(p);
			em.flush();
		} catch (Exception e){
		}finally {
			em.close();
		}
	}
	@Override
	//Update Product
	public void update(Producto pr) {
		EntityManager em = this.emf.createEntityManager();
		Producto p = new Producto();
		try {
			p= em.find(Producto.class, pr.getIdproducto());
			p.setIdProducto(pr.getIdproducto());
			p.setNombre(pr.getNombre());
			p.setDescripcion(pr.getDescripcion());
			p.setPrecio(pr.getPrecio());
			p.setStock(pr.getStock());
			p.setStockminimo(pr.getStockminimo());
			em.merge(p);
			em.flush();
		} catch (Exception e) {
		}finally {
			em.close();
		}
	}
	//End Product
	//Start Category
	@Override
	//List Category
	public List<Categoria> getAll1() {
	EntityManager em = this.emf.createEntityManager();
		try {
			List<Categoria> categorias = em.createNamedQuery("Categoria.findAll",Categoria.class).getResultList();
			return categorias;
		}
		catch(Exception ex) {	
		return null;}
		finally {
			em.close();
		}
	}
	@Override
	//Add Category
	public String add(Categoria c) {
		EntityManager em = this.emf.createEntityManager();
		try {
			em.persist(c);
			em.flush();
			return "Registro ingresado";
		}catch (Exception e) {
			return "Intente con otros valores porfavor";
		}finally {
			em.close();
		}
	}
	@Override
	//Update Category
	public void update(Categoria cu) {
		EntityManager em = this.emf.createEntityManager();
		Categoria c = new Categoria();
		try {
			c= em.find(Categoria.class, cu.getIdcategoria());
			c.setCategoria(cu.getCategoria());
			c.setDetalle(cu.getDetalle());
			em.merge(c);
			em.flush();
		} catch (Exception e) {
		}finally {
			em.close();
		}
	}
	@Override
	//Delete Category
	public void delete(String idcategoria) {
				EntityManager em = this.emf.createEntityManager();
				Categoria c = new Categoria();
				try {
					c = em.find(Categoria.class,idcategoria);
					em.remove(c);
					em.flush();
				} catch (Exception e){
				}finally {
					em.close();
				}
	}
	//End Category
	@Override
	//Start Users
	//List Users
	public List<Usuario> getAll2() {
		EntityManager em = this.emf.createEntityManager();
		try {
			List<Usuario> usuarios = em.createNamedQuery("Usuario.findAll",Usuario.class).getResultList();
			return usuarios;
		}
		catch(Exception ex) {	
		return null;}
		finally {
			em.close();
		}
	}
	@Override
	//Add Users
	public String add(Usuario u) {
		EntityManager em = this.emf.createEntityManager();
		try {
			em.persist(u);
			em.flush();
			return "Registro ingresado";
		}catch (Exception e) {
			return "Intente con otros valores porfavor";
		}finally {
			em.close();
		}
	}
	@Override
	//Delete Users
	public void Borrar(String idusuario) {
		EntityManager em = this.emf.createEntityManager();
		Usuario u = new Usuario();
		try {
			u = em.find(Usuario.class,idusuario);
			em.remove(u);
			em.flush();
		} catch (Exception e){
		}finally {
			em.close();
		}
	}
	@Override
	//Update Users
	public void update(Usuario us) {
		EntityManager em = this.emf.createEntityManager();
		Usuario u = new Usuario();
		try {
			u= em.find(Usuario.class,us.getIdusuario());
			u.setNombreu(us.getNombreu());
			u.setApellido(us.getApellido());
			u.setCorreo(us.getCorreo());
			u.setPassword(us.getPassword());
			u.setTipousuario(us.getTipousuario());
			em.merge(u);
			em.flush();
		} catch (Exception e) {
		}finally {
			em.close();
		}
	}
	//End Users
}
//End
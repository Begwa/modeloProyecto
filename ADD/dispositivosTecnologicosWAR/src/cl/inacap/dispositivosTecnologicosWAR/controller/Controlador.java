//package
package cl.inacap.dispositivosTecnologicosWAR.controller;
//imports
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cl.inacap.dispositivosTecnologicos.dao.ServicioLocal;
import cl.inacap.dispositivosTecnologicos.dto.Categoria;
import cl.inacap.dispositivosTecnologicos.dto.Producto;
import cl.inacap.dispositivosTecnologicos.dto.Usuario;
/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	//Variables
	private static final long serialVersionUID = 1L;
	//Inject
	@Inject
	private ServicioLocal servicio;
    /**
     * @see HttpServlet#HttpServlet()
     */
	//super
    public Controlador() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//button
		String btn=request.getParameter("btn");
		//start product
		List<Producto> productos = new ArrayList<>();
		int idproducto=0;
		String nombre="";
		String descripcion="";
		int precio=0;
		int stock=0;
		int stockminimo=0;
		//End Product
		//Start Category
		List<Categoria> categorias = new ArrayList<>();
		String mensaje="";
		String idcategoria ="";
		String categoria= "";
		String detalle ="";
		//End Category
		//Start User
		List<Usuario> usuarios = new ArrayList<>();
		String idusuario = "";
		String nombreu = "";
		String apellido = "";
		String correo = "";
		String password = "";
		String tipousuario ="";
		//End User
		//Switch
		switch (btn){
		//1
		case "1":
			//List Category
			categorias = this.servicio.getAll1();
			request.setAttribute("lista", categorias);
			request.getRequestDispatcher("listaCategoria.jsp").forward(request, response);
			break;
		//2
		case "2":
			//Add Category
			idcategoria = request.getParameter("txtidcategoria");
			categoria = request.getParameter("txtcategoria");
			detalle = request.getParameter("txtdetalle");
			Categoria c = new Categoria(idcategoria,categoria,detalle);
			mensaje = servicio.add(c);
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("agregarCategoria.jsp").forward(request,response);
			break;
		//3
		case "3":
			//Update Category
			idcategoria = request.getParameter("txtidcategoria");
			categoria = request.getParameter("txtcategoria");
			detalle = request.getParameter("txtdetalle");
			Categoria cu = new Categoria(idcategoria,categoria,detalle);
			servicio.update(cu);
			categorias = this.servicio.getAll1();
			request.setAttribute("categorias", categorias);
			request.getRequestDispatcher("listaCategoria.jsp").forward(request, response);
			break;	
		//4
		case "4":
			//Delete Category
			idcategoria =(request.getParameter("txtidcategoria"));
			servicio.delete(idcategoria);
			categorias = this.servicio.getAll1();
			request.setAttribute("categorias", categorias);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		//5	
		case "5":
			//List Product
			productos = this.servicio.getAll();
			request.setAttribute("lista", productos);
			request.getRequestDispatcher("listaProducto.jsp").forward(request, response);
			break;
		//6
		case "6":
			//Delete Product
			idproducto = Integer.parseInt(request.getParameter("txtidproducto"));
			servicio.delete(idproducto);
			productos = this.servicio.getAll();
			request.setAttribute("productos", productos);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		//7	
		case "7":
			//Add Product
			idproducto = Integer.parseInt(request.getParameter("txtidproducto"));
			nombre = request.getParameter("txtnombre");
			descripcion = request.getParameter("txtdescripcion");
			precio = Integer.parseInt(request.getParameter("txtprecio"));
			stock = Integer.parseInt(request.getParameter("txtstock"));
			stockminimo = Integer.parseInt(request.getParameter("txtstockminimo"));
			idcategoria = request.getParameter("txtidcategoria");
			Producto p = new Producto(idproducto,nombre,descripcion,precio,stock,stockminimo,idcategoria);
			mensaje = servicio.add(p);
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("agregarProducto.jsp").forward(request,response);
			break;
		//8	
		case "8":
			//Update Product
			idproducto = Integer.parseInt(request.getParameter("txtidproducto"));
			nombre = request.getParameter("txtnombre");
			descripcion= request.getParameter("txtdescripcion");
			precio = Integer.parseInt(request.getParameter("txtprecio"));
			stock = Integer.parseInt(request.getParameter("txtstock"));
			stockminimo = Integer.parseInt(request.getParameter("txtstockminimo"));
			idcategoria = request.getParameter("txtidcategoria");
			Producto pr = new Producto(idproducto,nombre,descripcion,precio,stock,stockminimo,idcategoria);
			servicio.update(pr);
			productos = this.servicio.getAll();
			request.setAttribute("productos", productos);
			request.getRequestDispatcher("listaProducto.jsp").forward(request, response);
			break;	
		//9
		case "9":
			//List Users
			usuarios = this.servicio.getAll2();
			request.setAttribute("lista", usuarios);
			request.getRequestDispatcher("listaUsuario.jsp").forward(request, response);
			break;
		//10	
		case "10":
			//Add Users
			idusuario = request.getParameter("txtidusuario");
			nombreu = request.getParameter("txtnombreu");
			apellido = request.getParameter("txtapellido");
			correo = request.getParameter("txtcorreo");
			password = request.getParameter("txtpassword");
			tipousuario = request.getParameter("txttipousuario");
			Usuario u = new Usuario(idusuario,nombreu,apellido,correo,password ,tipousuario);
			mensaje = servicio.add(u);
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("agregarUsuario.jsp").forward(request,response);
			break;
		//11	
		case "11":
			//Delete Users
			idusuario = request.getParameter("txtidusuario");
			servicio.Borrar(idusuario);
			usuarios = this.servicio.getAll2();
			request.setAttribute("usuarios", usuarios);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		//12
		case "12":
			//Update Users
			idusuario = request.getParameter("txtidusuario");
			nombreu = request.getParameter("txtnombreu");
			apellido = request.getParameter("txtapellido");
			correo = request.getParameter("txtcorreo");
			password = request.getParameter("txtpassword");
			tipousuario = request.getParameter("txttipousuario");
			Usuario us = new Usuario(idusuario,nombreu,apellido,correo,password ,tipousuario);
			servicio.update(us);
			productos = this.servicio.getAll();
			request.setAttribute("usuarios", usuarios);
			request.getRequestDispatcher("listaUsuario.jsp").forward(request, response);
			break;	
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
//End
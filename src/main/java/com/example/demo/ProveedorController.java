package com.example.demo;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ProveedorDAO;
import com.tienda.DTO.ProveedorDTO;

@RestController
public class ProveedorController {
	@RequestMapping("/registrarProveedor")
	public void registrarProveedor(ProveedorDTO proveedor) {
		ProveedorDAO dao = new ProveedorDAO();
		dao.registrarProveedor(proveedor);
	}
	
	@RequestMapping("/editarProveedor")
	public void editarProveedor(ProveedorDTO proveedor) {
		ProveedorDAO dao= new ProveedorDAO();
		dao.editarProveedor(proveedor);
	}
	
	@RequestMapping("/consultarProveedor")
	public ArrayList<ProveedorDTO> consultarProveedor(int documento){
		ProveedorDAO dao = new ProveedorDAO();
		return dao.consultarProveedor(documento);
	}
	
	@RequestMapping("/listarProveedor")
	public ArrayList<ProveedorDTO> listaDeProveedores(){
		ProveedorDAO dao = new ProveedorDAO();
		return dao.listaDeProveedores();
	}
	
	@RequestMapping("/eliminarProveedor")
	public void eliminarProveedor(int cedula) {
		ProveedorDAO dao = new ProveedorDAO();
		dao.eliminarProveedor(cedula);
	}
}

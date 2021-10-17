package com.example.demo;

import java.util.*;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ClienteDAO;
import com.tienda.DTO.ClienteDTO;

@RestController
public class ClienteController {
	
	@RequestMapping("/registrarCliente")
	public void registrarCliente(ClienteDTO cliente) {
		ClienteDAO dao = new ClienteDAO();
		dao.registrarCliente(cliente);
	}
	
	@RequestMapping("/editarCliente")
	public void editarCliente(ClienteDTO cliente) {
		ClienteDAO dao= new ClienteDAO();
		dao.editarCliente(cliente);
	}
	
	@RequestMapping("/consultarCliente")
	public ArrayList<ClienteDTO> consultarCliente(int documento){
		ClienteDAO dao = new ClienteDAO();
		return dao.consultarCliente(documento);
	}
	
	@RequestMapping("/listarCliente")
	public ArrayList<ClienteDTO> listaDeClientes(){
		ClienteDAO dao = new ClienteDAO();
		return dao.listaDeClientes();
	}
	
	@RequestMapping("/eliminarCliente")
	public void eliminarCliente(int cedula) {
		ClienteDAO dao = new ClienteDAO();
		dao.eliminarCliente(cedula);
	}
}

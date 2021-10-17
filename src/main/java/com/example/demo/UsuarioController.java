package com.example.demo;

import java.util.*;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.UsuarioDAO;
import com.tienda.DTO.UsuarioDTO;

@RestController
public class UsuarioController {
	
	@RequestMapping("/registrarUsuario")
	public void registrarUsuario(UsuarioDTO usuario) {
		UsuarioDAO dao = new UsuarioDAO();
		dao.registrarUsuario(usuario);
	}
	
	@RequestMapping("/editarUsuario")
	public void editarUsuario(UsuarioDTO usuario) {
		UsuarioDAO dao= new UsuarioDAO();
		dao.editarUsuario(usuario);
	}
	
	@RequestMapping("/consultarUsuario")
	public ArrayList<UsuarioDTO> consultarUsuario(int documento){
		UsuarioDAO dao = new UsuarioDAO();
		return dao.consultarUsuario(documento);
	}
	
	@RequestMapping("/listarUsuario")
	public ArrayList<UsuarioDTO> listaDeUsuarios(){
		UsuarioDAO dao = new UsuarioDAO();
		return dao.listaDeUsuarios();
	}
	
	@RequestMapping("/eliminarUsuario")
	public void eliminarUsuario(int cedula) {
		UsuarioDAO dao = new UsuarioDAO();
		dao.eliminarUsuario(cedula);
	}
}

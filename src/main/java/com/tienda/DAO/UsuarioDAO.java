package com.tienda.DAO;

import java.sql.*;
import java.util.*;

import javax.swing.JOptionPane;

import com.tienda.DTO.UsuarioDTO;

public class UsuarioDAO {
	PreparedStatement preparedStatement;

	public void registrarUsuario(UsuarioDTO usuario) {
		Conexion conex = new Conexion();
		try {
			Statement estatuto = conex.getConnection().createStatement();
			estatuto.executeUpdate("INSERT INTO usuarios VALUES ('"+usuario.getCedulaUsuario()+"', '"+usuario.getEmailUsuario()+"', '"+usuario.getNombreUsuario()+"', '"+usuario.getPassword()+"', '"+usuario.getUsuario()+"')");
			JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente", "Informacion", JOptionPane.INFORMATION_MESSAGE);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se registro la persona");
		}
	}
	
	public void editarUsuario(UsuarioDTO usuario) {
		Conexion conex = new Conexion();
		try {
			Statement st = conex.getConnection().createStatement();
			st.executeUpdate("UPDATE usuarios SET email_usuario ='"+usuario.getEmailUsuario()+"', nombre_usuario = '"+usuario.getNombreUsuario()+"', password = '"+usuario.getPassword()+"', usuario = '"+usuario.getUsuario()+"' WHERE cedula_usuario = "+usuario.getCedulaUsuario());
			JOptionPane.showMessageDialog(null, "Se ha actualizado Exitosamente", "Informacion", JOptionPane.INFORMATION_MESSAGE);
			st.close();
			conex.desconectar();
		}catch(SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se actualizo la persona");
		}
	}

	public ArrayList<UsuarioDTO> consultarUsuario(int documento) {
		ArrayList<UsuarioDTO> miCliente = new ArrayList<UsuarioDTO>();
		Conexion conex = new Conexion();

		try {
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario = ?");
			consulta.setInt(1, documento);
			ResultSet res = consulta.executeQuery();

			if (res.next()) {
				UsuarioDTO usuario = new UsuarioDTO();
				usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
				usuario.setEmailUsuario(res.getString("email_usuario"));
				usuario.setNombreUsuario(res.getString("nombre_usuario"));
				usuario.setPassword(res.getString("password"));
				usuario.setUsuario(res.getString("usuario"));

				miCliente.add(usuario);

			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n" + e);
		}
		return miCliente;
	}

	public ArrayList<UsuarioDTO> listaDeUsuarios() {
		ArrayList<UsuarioDTO> miCliente = new ArrayList<UsuarioDTO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				UsuarioDTO usuario = new UsuarioDTO();
				usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
				usuario.setEmailUsuario(res.getString("email_usuario"));
				usuario.setNombreUsuario(res.getString("nombre_usuario"));
				usuario.setPassword(res.getString("password"));
				usuario.setUsuario(res.getString("usuario"));

				miCliente.add(usuario);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
		return miCliente;
	}

	public void eliminarUsuario(int cedula) {
		Conexion conex = new Conexion();
		try {
			String query = "DELETE FROM usuarios WHERE cedula_usuario = ?";
			preparedStatement = conex.getConnection().prepareStatement(query);
			preparedStatement.setInt(1, cedula);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}

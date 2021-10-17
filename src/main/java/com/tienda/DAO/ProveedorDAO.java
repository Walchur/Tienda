package com.tienda.DAO;

import java.sql.*;
import java.util.*;

import javax.swing.JOptionPane;

import com.tienda.DTO.ProveedorDTO;

public class ProveedorDAO {
	PreparedStatement preparedStatement;
	
	public void registrarProveedor(ProveedorDTO proveedor) {
		Conexion conex = new Conexion();
		try {
			Statement estatuto = conex.getConnection().createStatement();
			estatuto.executeUpdate("INSERT INTO proveedores VALUES ('"+proveedor.getNitProveedor()+"', '"+proveedor.getDireccionProveedor()+"', '"+proveedor.getCiudadProveedor()+"', '"+proveedor.getNombreProveedor()+"', '"+proveedor.getTelefonoProveedor()+"')");
			JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente", "Informacion", JOptionPane.INFORMATION_MESSAGE);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se registro la persona");
		}
	}
	
	public void editarProveedor(ProveedorDTO proveedor) {
		Conexion conex = new Conexion();
		try {
			Statement st = conex.getConnection().createStatement();
			st.executeUpdate("UPDATE proveedores SET direccion_proveedor ='"+proveedor.getDireccionProveedor()+"', ciudad_proveedor = '"+proveedor.getCiudadProveedor()+"', nombre_proveedor = '"+proveedor.getNombreProveedor()+"', telefono_proveedor = '"+proveedor.getTelefonoProveedor()+"' WHERE nit_proveedor = "+proveedor.getNitProveedor());
			JOptionPane.showMessageDialog(null, "Se ha actualizado Exitosamente", "Informacion", JOptionPane.INFORMATION_MESSAGE);
			st.close();
			conex.desconectar();
		}catch(SQLException e) {
			System.out.println(e.getMessage());
			JOptionPane.showMessageDialog(null, "No se actualizo la persona");
		}
	}
	
	public ArrayList<ProveedorDTO> consultarProveedor(int documento) {
		ArrayList<ProveedorDTO> miCliente = new ArrayList<ProveedorDTO>();
		Conexion conex = new Conexion();

		try {
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM proveedores WHERE nit_proveedor = ?");
			consulta.setInt(1, documento);
			ResultSet res = consulta.executeQuery();

			if (res.next()) {
				ProveedorDTO proveedor = new ProveedorDTO();
				proveedor.setNitProveedor(Integer.parseInt(res.getString("nit_proveedor")));
				proveedor.setDireccionProveedor(res.getString("direccion_proveedor"));
				proveedor.setCiudadProveedor(res.getString("ciudad_proveedor"));
				proveedor.setNombreProveedor(res.getString("nombre_proveedor"));
				proveedor.setTelefonoProveedor(res.getString("telefono_proveedor"));

				miCliente.add(proveedor);

			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n" + e);
		}
		return miCliente;
	}
	
	public ArrayList<ProveedorDTO> listaDeProveedores() {
		ArrayList<ProveedorDTO> miCliente = new ArrayList<ProveedorDTO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores");
			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				ProveedorDTO proveedor = new ProveedorDTO();
				proveedor.setNitProveedor(Integer.parseInt(res.getString("nit_proveedor")));
				proveedor.setDireccionProveedor(res.getString("direccion_proveedor"));
				proveedor.setCiudadProveedor(res.getString("ciudad_proveedor"));
				proveedor.setNombreProveedor(res.getString("nombre_proveedor"));
				proveedor.setTelefonoProveedor(res.getString("telefono_proveedor"));

				miCliente.add(proveedor);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
		return miCliente;
	}
	
	public void eliminarProveedor(int cedula) {
		Conexion conex = new Conexion();
		try {
			String query = "DELETE FROM proveedores WHERE nit_proveedor = ?";
			preparedStatement = conex.getConnection().prepareStatement(query);
			preparedStatement.setInt(1, cedula);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}

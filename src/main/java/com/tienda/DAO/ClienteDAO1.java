package com.tienda.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tienda.DTO.ClienteDTO;

public class ClienteDAO1 {

	public ArrayList<ClienteDTO> buscar(String cedulacliente) throws SQLException {
		
		ArrayList<ClienteDTO> miCliente = new ArrayList<ClienteDTO>();
		Conexion conex = new Conexion();

	
		try {
			String sql = "SELECT * FROM clientes WHERE cedula_cliente = ?" + cedulacliente;
			PreparedStatement consulta = conex.getConnection().prepareStatement(sql);
			ResultSet rs = consulta.executeQuery();
			while (rs.next()) {
				ClienteDTO cli = new ClienteDTO();
				cli.setCedulaCliente(Integer.parseInt(rs.getString("1")));
				cli.setDireccionCliente(rs.getString("2"));
				cli.setEmailCliente(rs.getString("3"));
				cli.setNombreCliente(rs.getString("4"));
				cli.setTelefonoCliente(rs.getString("5"));
				miCliente.add(cli);
			}
		} catch (Exception e) {

		}

		return miCliente;

	}

}

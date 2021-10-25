package com.tienda.DAO;
import java.sql.PreparedStatement;

import com.tienda.DTO.Customer;

public class CustomerController {

	Conexion conex = new Conexion();
	PreparedStatement pst = null;
	
	public int addCustomer(Customer cust) {
		int rs = 0;
		
		try {
		
			String sql = "insert into tb_customers values(null, ?, ?)";
			pst = conex.getConnection().prepareStatement(sql);
			
			pst.setString(1, cust.getName());
			pst.setString(2, cust.getPhoto());
			
			rs = pst.executeUpdate();
			conex.desconectar();
			pst.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
}
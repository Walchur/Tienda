package com.tienda.DAO;

import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import com.tienda.DTO.ProductoDTO;


public class ProductoDAO {

	public void registrarProducto(ArrayList<ProductoDTO> productos) {
		Conexion conex = new Conexion();
		try {
			for (ProductoDTO producto : productos) {
				String sql = "INSERT INTO productos VALUES(" + producto.getCodigoProducto() + ","
						+ producto.getIvaCompra() + "," + producto.getNitProovedor() + ",'"
						+ producto.getNombreProducto() + "'," + producto.getPrecioCompra() + ","
						+ producto.getPrecioVenta() + ")";
				PreparedStatement consulta = conex.getConnection().prepareStatement(sql);
				consulta.executeUpdate();
				consulta.close();
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public ArrayList<ProductoDTO> leerFiles(String ruta) {
		ArrayList<ProductoDTO> productos = new ArrayList<ProductoDTO>();
		try {
			BufferedReader br = new BufferedReader(new FileReader(ruta));
			String line = br.readLine();
			while (line != null) {
				StringTokenizer st = new StringTokenizer(line, ";");
				int codigo_producto = Integer.parseInt((String) st.nextElement());
				String nombre_producto = (String) st.nextElement();
				int nit_proveedor = Integer.parseInt((String) st.nextElement());
				double precio_compra = Double.parseDouble((String) st.nextElement());
				double iva_compra = Double.parseDouble((String) st.nextElement());
				double precio_venta = Double.parseDouble((String) st.nextElement());
				ProductoDTO producto = new ProductoDTO(codigo_producto, iva_compra, nit_proveedor, nombre_producto,	precio_compra, precio_venta);
				productos.add(producto);
				line = br.readLine();

			}
			br.close();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println(productos);
		return productos;
	}
	
}

	

	

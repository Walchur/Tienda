package com.tienda.DTO;

public class ProductoDTO {
	private int codigoProducto;
	private double ivaCompra;
	private int nitProovedor;
	private String nombreProducto;
	private double precioCompra;
	private double precioVenta;
	
	public ProductoDTO(int codigoProducto, double ivaCompra, int nitProovedor, String nombreProducto, double precioCompra, double precioVenta) {
		super();
		this.codigoProducto = codigoProducto;
		this.ivaCompra = ivaCompra;
		this.nitProovedor = nitProovedor;
		this.nombreProducto = nombreProducto;
		this.precioCompra = precioCompra;
		this.precioVenta = precioVenta;
	}
	
	public ProductoDTO() {
		super();
	}

	public int getCodigoProducto() {
		return codigoProducto;
	}
	public void setCodigoProducto(int codigoProducto) {
		this.codigoProducto = codigoProducto;
	}
	public double getIvaCompra() {
		return ivaCompra;
	}
	public void setIvaCompra(double ivaCompra) {
		this.ivaCompra = ivaCompra;
	}
	public int getNitProovedor() {
		return nitProovedor;
	}
	public void setNitProovedor(int nitProovedor) {
		this.nitProovedor = nitProovedor;
	}
	public String getNombreProducto() {
		return nombreProducto;
	}
	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	public double getPrecioCompra() {
		return precioCompra;
	}
	public void setPrecioCompra(double precioCompra) {
		this.precioCompra = precioCompra;
	}
	public double getPrecioVenta() {
		return precioVenta;
	}
	public void setPrecioVenta(double precioVenta) {
		this.precioVenta = precioVenta;
	}
	
	
}

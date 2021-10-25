package com.example.demo;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ProductoDAO;
import com.tienda.DTO.ProductoDTO;

@RestController
public class ProductoController {
	ProductoDAO dao;
	
    @RequestMapping(value="/subirArchivo", method=RequestMethod.POST)
    public void subirArchivo(HttpServletRequest request, HttpServletResponse response) throws Exception{
    	dao = new ProductoDAO();
    	Part filePart = request.getPart("file");
    	String fileName = filePart.getSubmittedFileName();
    	for(Part part : request.getParts()) {
    		part.write("C:\\upload\\" + fileName);
    	}
    	
    	ArrayList<ProductoDTO> productos = dao.leerFiles("C:\\upload\\" + fileName);
    	dao.registrarProducto(productos);
    	
    	response.sendRedirect("index.jsp");
    }
    
}

package com.example.demo;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tienda.DAO.*;
import com.tienda.DTO.*;

@WebServlet("/ClienteController1")
public class ClienteController1 extends HttpServlet {
	ClienteDAO1 cdao = new ClienteDAO1();
	ClienteDTO cli = new ClienteDTO();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String menu = request.getParameter("menu");
		String accion = request.getParameter("accion");
		try {
			if (menu.equals("Ventas"))
				switch (accion) {
				case "ConsultarCliente":
					String cedulacliente = request.getParameter("cedula");

					cdao.buscar(cedulacliente);

					request.setAttribute("cli", cli);
					break;
				default:
					throw new AssertionError();
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("registrarventa.jsp").forward(request, response);

	}

}

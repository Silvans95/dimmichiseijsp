package it.prova.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.model.Persona;

@WebServlet("/CheckPresenzaServlet")
public class CheckPresenzaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckPresenzaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Persona persona = new Persona(request.getParameter("nomeInput"), request.getParameter("cognomeInput"));
		Persona personaConAccesso = new Persona("Silvano", "Paloni");

		if (persona.getNome().equalsIgnoreCase(personaConAccesso.getNome())
				&& persona.getCognome().equalsIgnoreCase(personaConAccesso.getCognome())) {

			request.setAttribute("personaAttribute", persona);

			RequestDispatcher rd = request.getRequestDispatcher("riconoscimento.jsp");
			rd.forward(request, response);

		} else {

			request.setAttribute("personaAttribute", persona);
			
			RequestDispatcher rd = request.getRequestDispatcher("sconosciuto.jsp");
			rd.forward(request, response);

		}
	}

}

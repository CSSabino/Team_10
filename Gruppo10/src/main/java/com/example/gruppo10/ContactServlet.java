package com.example.gruppo10;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "contactServlet", value = "/contact-servlet")
public class ContactServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nome = request.getParameter("name");
        String email = request.getParameter("email");
        String telefono = request.getParameter("phone");
        String indirizzo = request.getParameter("address");
        String artigiano = request.getParameter("address");

        request.setAttribute("nomeContattare", nome);
        request.setAttribute("emailContattare", email);
        request.setAttribute("telefonoContattare", telefono);
        request.setAttribute("indirizzoContattare", indirizzo);
        request.setAttribute("artigianoContattare", artigiano);
        String address = "/WEB-INF/home.jsp";


        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);

        dispatcher.forward(request, response);
    }
}
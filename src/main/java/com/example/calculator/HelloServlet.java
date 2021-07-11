package com.example.calculator;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/")
public class HelloServlet extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    processRequest(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    processRequest(request, response);

  }

  private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int res = 0;
    try {
      int a = Integer.parseInt(request.getParameter("a"));
      int b = Integer.parseInt(request.getParameter("b"));
      String action = request.getParameter("action");
      switch (action) {
        case "addition":
          res = a + b;
          break;
        case "soustration":
          res = a - b;
          break;
        case "multiplication":
          res = a * b;
          break;
        default:
          res = a / b;
          break;
      }
    } catch (NumberFormatException e) {
      e.printStackTrace();
    }
    request.getRequestDispatcher("calcul.jsp?res=" + res).forward(request, response);
  }
}
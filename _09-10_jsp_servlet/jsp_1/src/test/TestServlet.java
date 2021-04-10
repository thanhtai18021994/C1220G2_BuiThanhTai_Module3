package test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TestServlet",urlPatterns ="/google")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a= Integer.parseInt(request.getParameter("num1"));
        int b= Integer.parseInt(request.getParameter("num2"));
        int c=a+b;
        request.setAttribute("c",c);
        PrintWriter writer=response.getWriter();
//        writer.println(c);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}

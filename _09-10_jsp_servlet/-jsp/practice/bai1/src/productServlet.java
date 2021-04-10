import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "productServlet",urlPatterns = "/product")
public class productServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mota=request.getParameter("info1");
        int gia=Integer.parseInt(request.getParameter("price"));
        double chietkhau=Double.parseDouble(request.getParameter("info2"));
        double discount=chietkhau*gia*0.01;
        PrintWriter writer=response.getWriter();
        writer.println(discount);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

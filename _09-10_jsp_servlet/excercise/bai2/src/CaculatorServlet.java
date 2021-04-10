import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CaculatorServlet",urlPatterns = "/cal")
public class CaculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a= Integer.parseInt(request.getParameter("num1"));
        int b= Integer.parseInt(request.getParameter("num2"));
        String result=null;
        String pheptinh=request.getParameter("operator");
        switch (pheptinh){
            case "cong":
                result=new Caculator(a,b).sum();
                break;
            case "tru":
                result=new Caculator(a,b).tru();
                break;
            case "nhan":
                result=new Caculator(a,b).subtract();
                break;
            case "chia":
                result=new Caculator(a,b).device();
                break;
        }
        request.setAttribute("Ketqua",result);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}

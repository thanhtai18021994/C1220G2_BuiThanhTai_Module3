import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustumerServlet",urlPatterns ={"","/custumer"})
public class CustumerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Custumer> custumerList=new ArrayList<>();
        custumerList.add(new Custumer("Nguyen Van A","2012/12/13","Da Nang","https://salt.tikicdn.com/cache/w444/media/catalog/product/d/u/duckdriver-color-y-1_1.jpg"));
        custumerList.add(new Custumer("Nguyen Van B","2012/12/13","Da Nang","https://salt.tikicdn.com/cache/w444/media/catalog/product/d/u/duckdriver-color-y-1_1.jpg"));
        custumerList.add(new Custumer("Nguyen Van C","2012/12/13","Da Nang","https://salt.tikicdn.com/cache/w444/media/catalog/product/d/u/duckdriver-color-y-1_1.jpg"));
        custumerList.add(new Custumer("Nguyen Van D","2012/12/13","Da Nang","https://salt.tikicdn.com/cache/w444/media/catalog/product/d/u/duckdriver-color-y-1_1.jpg"));
    request.setAttribute("custumerListJstl",custumerList);
    request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}

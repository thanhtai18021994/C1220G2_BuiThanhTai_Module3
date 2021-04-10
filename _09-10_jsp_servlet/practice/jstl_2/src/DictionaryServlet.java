import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

@WebServlet(name = "DictionaryServlet",urlPatterns = "/dictionary")
public class DictionaryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,String> dictionaryList=new HashMap<>();
        dictionaryList.put("hello","xin chao");
        dictionaryList.put("chicken","ga");
        dictionaryList.put("duck","vit");
        String word=request.getParameter("word");
        String a=dictionaryList.get(word);
        String result;
        if (a!=null){
            result=a;
        }else {
            result="null";
        }
        request.setAttribute("newWord",result);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}

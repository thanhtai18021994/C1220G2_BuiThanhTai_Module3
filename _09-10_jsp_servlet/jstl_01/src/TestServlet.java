import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TestServlet",urlPatterns ={"","/test"})
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList=new ArrayList<>();
        studentList.add(new Student(1,"Nguyen van A","C1220G1",5.5,1));
        studentList.add(new Student(2,"Nguyen van B","C1120G1",4.5,0));
        studentList.add(new Student(3,"Nguyen van C","C1020G1",7.5,1));
        studentList.add(new Student(4,"Nguyen van D","C0920G1",8.5,0));
        request.setAttribute("listStudentJstl",studentList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}

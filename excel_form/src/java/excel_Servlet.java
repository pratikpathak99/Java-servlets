import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/excel_Servlet"})
public class excel_Servlet extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 PrintWriter out;
 out=response.getWriter();
 response.setContentType("application/vnd.ms-excel");
 response.setHeader("Content-disposition","attachment; filename=Student.xls");
 
 String Enrollment_Number = request.getParameter("Enrollment_Number");
 String Name = request.getParameter("Name");
 String Course = request.getParameter("Course");
 String Semester = request.getParameter("Semester");
 String sub1 = request.getParameter("sub1");
 String sub2 = request.getParameter("sub2");
 String sub3 = request.getParameter("sub3");
 String sub4 = request.getParameter("sub4");
 String sub5 = request.getParameter("sub5");
 
 out.println("Enrollment no \tName \tCourse \tSemester \tOOT \tBDA \tMADA \tAN \tPython \tTotal \tPercentage");
 
 out.println(Enrollment_Number + "\t" + Name + "\t" + Course + "\t" + Semester + "\t" + sub1 + "\t" + sub2 + "\t" + sub3 + "\t" + sub4 + "\t" + sub5 + "\t=SUM(E2:I2)" + "\t=AVERAGE(E2:I2)");
 
 }

 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 processRequest(request, response);
 }

 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 processRequest(request, response);
 }
 
 @Override
 public String getServletInfo() {
 return "Short description";
 }
}
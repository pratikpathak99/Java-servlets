<%-- 
    Document   : student
    Created on : Mar 25, 2021, 10:17:07 AM
    Author     : asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <pre>
        <%
            try { 
                String Student_Enrollment_No = request.getParameter("enrollment_no");
                String name = request.getParameter("Student_Name"); 
                int oot = Integer.parseInt(request.getParameter("Subject_1"));
                int Android = Integer.parseInt(request.getParameter("Subject_2"));
                int Big_Data = Integer.parseInt(request.getParameter("Subject_3"));
                int AN = Integer.parseInt(request.getParameter("Subject_4"));
                int python = Integer.parseInt(request.getParameter("Subject_5"));
                int Total = oot+Android+Big_Data+AN+python;
                double percentage = (Total/500.0)*100;
                
                out.println("Student Enrollment No :: "+Student_Enrollment_No);
                out.println("Student Name :: "+name);
                out.println("OOT Subject Marks :: "+oot);
                out.println("Android Subject Marks :: "+Android);
                out.println("Big Data Subject Marks :: "+Big_Data);
                out.println("AN Subject Marks :: "+AN);
                out.println("python Subject Marks :: "+python);
                out.println("Total Marks :: "+Total);
                out.println("Your percentage :: "+percentage);
                
                if(percentage<40){
                    String grade = "F";
                    out.println("Grade is :: "+grade);
                }
                if(41 <= percentage && percentage <= 50){
                    String grade = "D";
                    out.println("Grade is :: "+grade);
                }
                if(51 <= percentage && percentage <= 60){
                    String grade = "C";
                    out.println("Grade is :: "+grade);
                }
                if(61 <= percentage && percentage <= 75){
                    String grade = "B";
                    out.println("Grade is :: "+grade);
                }
                if(76 <= percentage){
                    String grade = "A";
                    out.println("Grade is :: "+grade);
                }
            }
            catch (Exception e) {
                out.println("Welcome To Simple Interest..");
            }
        %>
    </pre>
    </body>
</html>

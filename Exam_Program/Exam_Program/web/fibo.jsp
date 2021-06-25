<%-- 
    Document   : fibo
    Created on : Jun 25, 2021, 4:20:47 PM
    Author     : Pratik Pathak
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>The Value of Fibonacci Series</h1>
        <h1>
        <%
            String s=request.getParameter("n1");
            int n=Integer.parseInt(s);
            int i=1,f1=0,f2=1,f3;
            while(i<=n)
            {
              out.println(f1);
              f3=f1+f2;
              f1=f2;
              f2=f3;
              i=i+1; 
            }
        %>
        </h1>
    </body>
</html>

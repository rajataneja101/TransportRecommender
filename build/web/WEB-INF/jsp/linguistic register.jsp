<%@ page import ="java.sql.*" %>
<%
    String company = request.getParameter("cname");    
    String source = request.getParameter("from");
    String destination = request.getParameter("to");
    String price = request.getParameter("price");
    String contact = request.getParameter("contact");
     String mail = request.getParameter("mail");
  
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into linguistic(company, source, destination, price, contact,mail) values ('" + company + "','" + source + "','" + destination + "'," + price + "," + contact + ",'"+mail+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("linguistic");
    }
%>
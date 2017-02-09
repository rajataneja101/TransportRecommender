<!--<%@ page import ="java.sql.*" %>

<html>
<body>
<div id="content">


    <p>Displaying table contents: </p>

    <table border="0" cellpadding="10">
        <thead>
            <tr>
             
                <th>Company</th>
                <th>from</th>
                <th>to</th>
            </tr>
        </thead>
        <tbody>


            <%
              /*String from = request.getParameter("from");
             String to = request.getParameter("to");
              String account = request.getParameter("account");
                Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat","root", "root");
    Statement st = con.createStatement();
              
                String query = "select * from "+ account+" where source = "+ from+";"; //+"' and to = '"+to+"'";
                ResultSet rs = st.executeQuery(query);
                while(rs.next()){*/
            %>
            <tr>
                <%
                    
                  
                   // String company = rs.getString("company");
                   // int salary = rs.getInt("salary");
                %>
               
                
            
            </tr>               

            <%      
                //}
            %>

        </tbody>
    </table>
</div>
</body>
</html>

-->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "rajat";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">

<td><b>company</b></td>
<td><b>source</b></td>
<td><b>destination</b></td>

</tr>
<%
try{ 
    String from = request.getParameter("from");
             String to = request.getParameter("to");
      String account = request.getParameter("account");
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM "+account+" where source='"+from+"'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">


<td><%=resultSet.getString("company") %></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
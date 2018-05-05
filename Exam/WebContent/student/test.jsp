<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<%
	int count=0;
 	String name = (String) session.getAttribute("name");
	if (name != null)
	{

		out.print("Hello "+ name);
		
		Connection co = Dbconnect.getConnection();
		PreparedStatement ps = co.prepareStatement("SELECT * FROM `question`");
		PreparedStatement ps1 = co.prepareStatement("SELECT count(*) FROM `question`");
		ResultSet rs = ps.executeQuery();
		ResultSet rs1 = ps1.executeQuery();
		while(rs1.next())
		{
			count = rs1.getInt(1);
		}
		
	
%>
	<form action="/Exam/student/result.jsp">
<%
		while(rs.next())
		{
			%>
			<div style="margin-top: 20px;">
				<label><%=rs.getString("question") %></label><br>
				<input type="radio" name="<%=rs.getString("id") %>" value="<%=rs.getString("option1").equals(rs.getString("answer")) ? "correct":"InCorrect"%>"> <%=rs.getString("option1")%><br>
				<input type="radio" name="<%=rs.getString("id") %>" value="<%=rs.getString("option2").equals(rs.getString("answer")) ? "correct":"InCorrect"%>"> <%=rs.getString("option2")%><br>
				<input type="radio" name="<%=rs.getString("id") %>" value="<%=rs.getString("option3").equals(rs.getString("answer")) ? "correct":"InCorrect"%>"> <%=rs.getString("option3")%><br>
				<input type="radio" name="<%=rs.getString("id") %>" value="<%=rs.getString("option4").equals(rs.getString("answer")) ? "correct" :"InCorrect"%>"> <%=rs.getString("option4")%><br>
				<input type="hidden" value="<%=rs.getString("answer") %>" name="<%=rs.getString("id") %>">
				
			</div>
			<%
		}
		%>
		<input type="submit" value="Submit">
		<a onclick="checkAll();" class="btn btn-default">Submit</a>
		</form>
		<%
		
		
		
	}else{
		response.sendRedirect("/Exam/student/index.jsp");
	}
%>
<script type="text/javascript">
var j =1;

    function checkQs(que)
    {
        var qs = document.getElementsByName(que);
        var radioCount = qs.length;
       

        for(var i = 0; i< radioCount; i++)
        {
        	
            if(qs[i].checked)
            {  
                if(qs[i].value == "correct")
                {
                   j++;
                }
            }
        }
        
    }
    function checkAll()
    {
    	for(var i =0 ; i <= <%=count%>;i++)
    		{
    		checkQs(i);
    		}
    	console.log("Mark "+j);
    }
</script>


</script>

</body>
</html>
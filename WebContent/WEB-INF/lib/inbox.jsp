<%@page import="java.sql.*" %>

<jsp:include page="header.jsp"></jsp:include>
<head>
</head>
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						&gt;<section>
							<h2>Welcome to Mailservices!</h2>
							<p>Hi! This is <strong>Mail Services</strong>, a free service by LNM Students<br> for Mailing system.
							You can perform all email operation,Currently  it stores the information in database
							it's free of cost.Let's try it..
							</p>
							
						</section>
					
					</div>
					<div class="4u">
									
									<% 
									
								if(session.getAttribute("username")!=null){
								String username=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>Welcome "+username+"</font>");
								if(request.getAttribute("delete")!=null){
								String delete=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>"+delete+"</font>");
								}
								try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","yash2911");
			PreparedStatement ps=con.prepareStatement("Select * from INBOX where RECIEVER=?");
			ps.setString(1,username);
			ResultSet rs=ps.executeQuery();
			out.print("<div id='bottom'></div>");
			
			out.print("<table border=4 cellspacing='4' cellpadding='5'>");
			out.print("<tr><td>SENDER 	&nbsp;	&nbsp;</td><th>MESSAGE	&nbsp; 	&nbsp;</td><td>DATE OF RECIEVING 	&nbsp;	&nbsp;</td><td>Delete</td></tr>");
			while(rs.next()){
				int id=rs.getInt(1);
				System.out.print(id);
				out.print("<tr>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getString(4) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				
				out.print("<td><a href='delete.jsp?val="+rs.getInt(1)+"'> Delete</a></td>");
			
				out.print("</tr>");
			
			}
			out.print("</table>");
			out.print("<table align='right'width='40%'>");
			
			out.print("</table>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
								
								
								
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="index.jsp"></jsp:forward>
									<%
									
									}
								%>
								
								
								</div>
									
						
		
							
					
					
					</div>
			
				</div>
				
			</div>
	


<jsp:include page="footer.html"></jsp:include>
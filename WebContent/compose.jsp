<jsp:include page="header.jsp"></jsp:include>
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h1>Welcome to Mailservices!</h1>
							<p>Hi! This is <strong>Mail Services</strong>, a free service by <br> for Mailing system.
							You can perform all email operation,Currently  it stores the information in database
							it's free of cost.Let's try it..Hope You will Appreciate us.
							</p>
							
						</section>
					
					</div>
					<div class="5u">
						
						<section>
							
							<ul class="small-image-list">
								
					<li>
									<div>
									<% 
									
								if(session.getAttribute("username")!=null){
								String username=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>Welcome "+username+"</font>");
								}
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="index.jsp"></jsp:forward>
									<%}
								%>
								<% 
								if(request.getAttribute("compose")!=null){
								String compose= (String)request.getAttribute("compose");
								out.print("<font style='color:navy'>"+compose+"</font>");
								}
								if(request.getAttribute("composeerr")!=null){
								String composeerr= (String)request.getAttribute("composeerr");
								out.print("<font style='color:navy'>"+composeerr+"</font>");
								}
								%>
								
								
									</div>
									
						</li>			
						
						<li>
					
						<h4>Compose Message</h4> <form action="ComposeServlet" >
						<table>
			 	<tr><td>To: <input type="text" name="reciever_id"/><br/></td></tr>
			 	<tr><td>Message:<br/></td></tr>
			 	<tr><td><textarea rows="10" cols="40" name="message"></textarea><br/></td></tr>
			 	<tr><td><input type="submit" value="Send"/></td></tr>
			 	
			 	</table></form>
						</li>
					
										 
		
							
								
							</ul>
						</section>
					
					</div>
					
				</div>
				
			</div>
		</div>


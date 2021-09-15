import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class RegisterUser {
static int status=0;
public static int register(String email,String password,String name,String gender,String mname, String country){
	

	
	try {
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		System.out.println(email +  password +  name +  gender +  mname +  country);
		

		String ps1 = "Insert into MAILCASTINGUSER VALUES (?, ?, ?, ?, ?, ?)";
		ps = con.prepareStatement(ps1);
		ps.setString(1,email);
		ps.setString(2,password);
		ps.setString(3,name);
		ps.setString(4,gender);
		ps.setString(5,mname);
		ps.setString(6,country);
		
		status=ps.executeUpdate();

		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}

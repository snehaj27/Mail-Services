import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class GetCon {
private GetCon(){}

public static Connection con;
static{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","password");
	} catch (ClassNotFoundException e) {
	
		e.printStackTrace();
		
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}
}

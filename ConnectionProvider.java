package Project;
import java.sql.*;
public class ConnectionProvider {
public static Connection getCon()
{
try {
   Class.forName("com.mysql.jdbc.Driver"); 
   Connection con=DriverManager.getConnection("jdbc:mysql://containers-us-west-79.railway.app:6464/railway","root","q8SRJXflKAQiEq3bKGBu");
   return con;
}
   catch(Exception e) 
{
	   System.out.println(e);
	   return null;
   }
}
}


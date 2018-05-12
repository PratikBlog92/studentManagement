package dashBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.sun.corba.se.impl.ior.GenericTaggedComponent;

import connection.Dbconnect;

public class Dash {

	static Connection co = Dbconnect.getConnection();
	
	public static int getStudentCount()
	{
		int count=0;
		try {
			//SELECT SUM(`totalFee`) FROM `studentinfo`
			//SELECT SUM(`balence`) FROM `studentinfo`
			//SELECT COUNT(*) FROM `question`
			PreparedStatement ps = co.prepareStatement("SELECT COUNT(*) FROM `studentinfo`");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				count = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;		
	}
	
	public static int getTotalFee()
	{
		int count=0;
		try {
			//SELECT SUM(`totalFee`) FROM `studentinfo`
			//SELECT SUM(`balence`) FROM `studentinfo`
			//SELECT COUNT(*) FROM `question`
			PreparedStatement ps = co.prepareStatement("SELECT SUM(`totalFee`) FROM `studentinfo`");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				count = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;		
	}
	
	public static int getBalence()
	{
		int count=0;
		try {
			//SELECT SUM(`totalFee`) FROM `studentinfo`
			//SELECT SUM(`balence`) FROM `studentinfo`
			//SELECT COUNT(*) FROM `question`
			PreparedStatement ps = co.prepareStatement("SELECT SUM(`balence`) FROM `studentinfo`");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				count = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;		
	}
	
	public static int getTotalQuestionCount()
	{
		int count=0;
		try {
			//SELECT SUM(`totalFee`) FROM `studentinfo`
			//SELECT SUM(`balence`) FROM `studentinfo`
			//SELECT COUNT(*) FROM `question`
			PreparedStatement ps = co.prepareStatement("SELECT COUNT(*) FROM `question`");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				count = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;		
	}
	
	
	
}

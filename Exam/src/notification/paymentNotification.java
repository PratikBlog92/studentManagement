package notification;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import connection.Dbconnect;
import pojoClass.studentPojo;

public class paymentNotification {

	static Connection conn = Dbconnect.getConnection();
	static LocalDate date = LocalDate.now();
	
	public static List<studentPojo> todaysPendingPayment()
	{
		ArrayList<studentPojo> al = new ArrayList<>();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM `studentinfo` WHERE `nextInstallment`=?");
			ps.setString(1, date.toString());
			ResultSet rs  = ps.executeQuery();
			
			while(rs.next())
			{
				al.add(new studentPojo(rs.getInt("id"),rs.getString("name"),rs.getString("email"),rs.getString("mobile"),rs.getInt("totalFee"),rs.getInt("balence"),rs.getString("nextInstallment"),rs.getString("cource")));
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return al;
	}
	
}

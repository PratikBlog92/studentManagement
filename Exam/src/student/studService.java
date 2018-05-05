package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.Dbconnect;
import pojoClass.studentPojo;

public class studService {
	static Connection co = null;
	static{
		co = Dbconnect.getConnection();
	}
	
	public boolean regStudWithFirstInstallment(studentPojo studentPojo) throws Exception
	{
		PreparedStatement ps = co.prepareStatement("INSERT INTO `studentInfo`(`name`, `email`, `mobile`, `totalFee`, `installment1`, `dateOfinstallment1`, `balence`, `nextInstallment`, `cource`) VALUES (?,?,?,?,?,now(),?,?,?)");
		System.out.println(ps);
		ps.setString(1, studentPojo.getName());
		ps.setString(2, studentPojo.getEmail());
		ps.setString(3, studentPojo.getMobile());
		ps.setInt(4, studentPojo.getTotalFee());
		ps.setInt(5, studentPojo.getInstallment1());
		ps.setInt(6, studentPojo.getBallence());
		ps.setString(7,studentPojo.getNextInstallment());
		ps.setString(8, studentPojo.getCource());
		System.out.println(ps);
		
		ps.executeUpdate();
		
		return true;
	}
	
	public boolean regStudWithSecondInstallment(studentPojo pojo) throws SQLException
	{
		PreparedStatement ps = co.prepareStatement("UPDATE `studentinfo` SET `installment2`=?,`dateOfinstallment2`=now(),`balence`=?,`nextInstallment`=? WHERE `id` =?");
		ps.setInt(1, pojo.getInstallment1());
		ps.setInt(2, pojo.getBallence());
		ps.setString(3, pojo.getNextInstallment());
		ps.setInt(4, pojo.getId());
		ps.executeUpdate();
		return true;
	}
	
	public boolean regStudWithThirdInstallment(studentPojo studentPojo) throws Exception {
	
		//UPDATE `studentinfo` SET `installment3`=?,`dateOfinstallment3`=?,`balence`=?,`nextInstallment`=? WHERE `id`=?
		co = Dbconnect.getConnection();
		PreparedStatement ps = co.prepareStatement("UPDATE `studentinfo` SET `installment3`=?,`dateOfinstallment3`=now(),`balence`=?,`nextInstallment`=? WHERE `id`=?");
		ps.setInt(1, studentPojo.getInstallment3());
		ps.setInt(2, studentPojo.getBallence());
		ps.setString(3, studentPojo.getNextInstallment());
		ps.setInt(4, studentPojo.getId());
		ps.executeUpdate();
		
		return true;
		
	}
	
	public boolean regStudWithForthInstallment(studentPojo studentPojo) throws Exception {
		
		co = Dbconnect.getConnection();
		PreparedStatement ps = co.prepareStatement("UPDATE `studentinfo` SET `installment4`=?,`dateOfinstallment4`=now(),`balence`=?,`nextInstallment`=? WHERE `id`=?");
		ps.setInt(1, studentPojo.getInstallment4());
		ps.setInt(2, studentPojo.getBallence());
		ps.setString(3, studentPojo.getNextInstallment());
		ps.setInt(4, studentPojo.getId());
		ps.executeUpdate();
		return true;
	}
	
public boolean regStudWithFifthInstallment(studentPojo studentPojo) throws Exception {
		
		co = Dbconnect.getConnection();
		PreparedStatement ps = co.prepareStatement("UPDATE `studentinfo` SET `installment5`=?,`dateOfinstallment5`=now(),`balence`=0,`nextInstallment`='NIL' WHERE id =?");
		ps.setInt(1, studentPojo.getInstallment5());
		ps.setInt(2, studentPojo.getId());
		ps.executeUpdate();
		return true;
	}
}

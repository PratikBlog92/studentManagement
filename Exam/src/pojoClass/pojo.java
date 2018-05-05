package pojoClass;

public class pojo {

	String name;
	String phone;
	String email;
	String qualification;
	String passOutYear;
	String marks;
	
	
	public pojo(String name, String phone, String email, String qualification, String passOutYear) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.qualification = qualification;
		this.passOutYear = passOutYear;
	}
	
	
	public pojo(String name, String phone, String email, String qualification, String passOutYear, String marks) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.qualification = qualification;
		this.passOutYear = passOutYear;
		this.marks = marks;
	}
	
	
	public pojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getPassOutYear() {
		return passOutYear;
	}
	public void setPassOutYear(String passOutYear) {
		this.passOutYear = passOutYear;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}


	@Override
	public String toString() {
		return "pojo [name=" + name + ", phone=" + phone + ", email=" + email + ", qualification=" + qualification
				+ ", passOutYear=" + passOutYear + ", marks=" + marks + "]";
	}
	
	
		
}

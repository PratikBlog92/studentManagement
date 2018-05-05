package pojoClass;

public class studentPojo {

	int id;
	String name;
	String email;
	String mobile;
	int totalFee;
	int installment1;
	String dateOfInstllment1;
	int installment2;
	String dateOfInstllment2;
	int installment3;
	String dateOfInstllment3;
	int installment4;
	String dateOfInstllment4;
	int installment5;
	String dateOfInstllment5;
	int ballence;
	String nextInstallment;
	String cource;
	
	public String getCource() {
		return cource;
	}
	public void setCource(String cource) {
		this.cource = cource;
	}
	public String getNextInstallment() {
		return nextInstallment;
	}
	public void setNextInstallment(String nextInstallment) {
		this.nextInstallment = nextInstallment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	public int getInstallment1() {
		return installment1;
	}
	public void setInstallment1(int installment1) {
		this.installment1 = installment1;
	}
	public String getDateOfInstllment1() {
		return dateOfInstllment1;
	}
	public void setDateOfInstllment1(String dateOfInstllment1) {
		this.dateOfInstllment1 = dateOfInstllment1;
	}
	public int getInstallment2() {
		return installment2;
	}
	public void setInstallment2(int installment2) {
		this.installment2 = installment2;
	}
	public String getDateOfInstllment2() {
		return dateOfInstllment2;
	}
	public void setDateOfInstllment2(String dateOfInstllment2) {
		this.dateOfInstllment2 = dateOfInstllment2;
	}
	public int getInstallment3() {
		return installment3;
	}
	public void setInstallment3(int installment3) {
		this.installment3 = installment3;
	}
	public String getDateOfInstllment3() {
		return dateOfInstllment3;
	}
	public void setDateOfInstllment3(String dateOfInstllment3) {
		this.dateOfInstllment3 = dateOfInstllment3;
	}
	public int getInstallment4() {
		return installment4;
	}
	public void setInstallment4(int installment4) {
		this.installment4 = installment4;
	}
	public String getDateOfInstllment4() {
		return dateOfInstllment4;
	}
	public void setDateOfInstllment4(String dateOfInstllment4) {
		this.dateOfInstllment4 = dateOfInstllment4;
	}
	public int getInstallment5() {
		return installment5;
	}
	public void setInstallment5(int installment5) {
		this.installment5 = installment5;
	}
	public String getDateOfInstllment5() {
		return dateOfInstllment5;
	}
	public void setDateOfInstllment5(String dateOfInstllment5) {
		this.dateOfInstllment5 = dateOfInstllment5;
	}
	public int getBallence() {
		return ballence;
	}
	public void setBallence(int ballence) {
		this.ballence = ballence;
	}
	

	
	public studentPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/*First Installment*/
	public studentPojo(String name, String email, String mobile, int totalFee, int installment1,
			 int ballence, String nextInstallment, String cource) {
		super();
		
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.totalFee = totalFee;
		this.installment1 = installment1;
		this.ballence = ballence;
		this.nextInstallment = nextInstallment;
		this.cource = cource;

	}
	
	/* Installment 2 */
	public studentPojo(int id, String name, String email, String mobile, int totalFee, int installment1,
			String dateOfInstllment1, int installment2, String dateOfInstllment2, int ballence, String nextInstallment,
			String cource) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.totalFee = totalFee;
		this.installment1 = installment1;
		this.dateOfInstllment1 = dateOfInstllment1;
		this.installment2 = installment2;
		this.dateOfInstllment2 = dateOfInstllment2;
		this.ballence = ballence;
		this.nextInstallment = nextInstallment;
		this.cource = cource;
	}
	
	/* Third Installment */	
	public studentPojo(int id, String name, String email, String mobile, int totalFee, int installment1,
			String dateOfInstllment1, int installment2, String dateOfInstllment2, int installment3,
			String dateOfInstllment3, int ballence, String nextInstallment, String cource) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.totalFee = totalFee;
		this.installment1 = installment1;
		this.dateOfInstllment1 = dateOfInstllment1;
		this.installment2 = installment2;
		this.dateOfInstllment2 = dateOfInstllment2;
		this.installment3 = installment3;
		this.dateOfInstllment3 = dateOfInstllment3;
		this.ballence = ballence;
		this.nextInstallment = nextInstallment;
		this.cource = cource;
	}
	
	/*Forth Installment*/
	public studentPojo(int id, String name, String email, String mobile, int totalFee, int installment1,
			String dateOfInstllment1, int installment2, String dateOfInstllment2, int installment3,
			String dateOfInstllment3, int installment4, String dateOfInstllment4, int ballence, String nextInstallment,
			String cource) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.totalFee = totalFee;
		this.installment1 = installment1;
		this.dateOfInstllment1 = dateOfInstllment1;
		this.installment2 = installment2;
		this.dateOfInstllment2 = dateOfInstllment2;
		this.installment3 = installment3;
		this.dateOfInstllment3 = dateOfInstllment3;
		this.installment4 = installment4;
		this.dateOfInstllment4 = dateOfInstllment4;
		this.ballence = ballence;
		this.nextInstallment = nextInstallment;
		this.cource = cource;
	}
	
	/*Fifth Installment*/
	public studentPojo(int id, String name, String email, String mobile, int totalFee, int installment1,
			String dateOfInstllment1, int installment2, String dateOfInstllment2, int installment3,
			String dateOfInstllment3, int installment4, String dateOfInstllment4, int installment5,
			String dateOfInstllment5, int ballence, String nextInstallment, String cource) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.totalFee = totalFee;
		this.installment1 = installment1;
		this.dateOfInstllment1 = dateOfInstllment1;
		this.installment2 = installment2;
		this.dateOfInstllment2 = dateOfInstllment2;
		this.installment3 = installment3;
		this.dateOfInstllment3 = dateOfInstllment3;
		this.installment4 = installment4;
		this.dateOfInstllment4 = dateOfInstllment4;
		this.installment5 = installment5;
		this.dateOfInstllment5 = dateOfInstllment5;
		this.ballence = ballence;
		this.nextInstallment = nextInstallment;
		this.cource = cource;
	}
	

	
	
	

	
	
	
	
	
	
}

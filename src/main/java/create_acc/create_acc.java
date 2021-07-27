package create_acc;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="created_accounts",uniqueConstraints = @UniqueConstraint(columnNames= {"MobileNumber"}))
public class create_acc {
	private String Fname;
	private String Lname;
	@Id
	private String Email;
	private String Password;
	private String ConfirmPassword;
	private String MobileNumber;
	
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		this.Fname = fname;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		this.Lname = lname;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		this.Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		this.Password = password;
	}
	public String getConfirmPassword() {
		return ConfirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.ConfirmPassword = confirmPassword;
	}
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.MobileNumber = mobileNumber;
	}
	
	
	
}

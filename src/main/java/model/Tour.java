package model;

public class Tour {
	private String fname;
	private String email;
	private String password;
	
	private String phone;
	private String tname;
	
	private String lang;
	private String pmethod;
	private String ename;
	private String eRelation;
	private String eNumber;
	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	
	
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getPmethod() {
		return pmethod;
	}
	public void setPmethod(String pmethod) {
		this.pmethod = pmethod;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String geteRelation() {
		return eRelation;
	}
	public void seteRelation(String eRelation) {
		this.eRelation = eRelation;
	}
	public String geteNumber() {
		return eNumber;
	}
	public void seteNumber(String eNumber) {
		this.eNumber = eNumber;
	}

}

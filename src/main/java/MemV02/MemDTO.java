package MemV02;

public class MemDTO {
public MemDTO(String mem_id, String mem_name, String mem_mail, String mem_phone, String mem_addr) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_mail = mem_mail;
		this.mem_phone = mem_phone;
		this.mem_addr = mem_addr;
	}
private String mem_id;
private String mem_pwd;
private String mem_name;
private String mem_mail;
private String mem_phone;
private String mem_addr;



public String getMem_id() {
	return mem_id;
}
public void setMem_id(String mem_id) {
	this.mem_id = mem_id;
}
public String getMem_pwd() {
	return mem_pwd;
}
public void setMem_pwd(String mem_pwd) {
	this.mem_pwd = mem_pwd;
}
public String getMem_name() {
	return mem_name;
}
public void setMem_name(String mem_name) {
	this.mem_name = mem_name;
}
public String getMem_mail() {
	return mem_mail;
}
public void setMem_mail(String mem_mail) {
	this.mem_mail = mem_mail;
}
public String getMem_phone() {
	return mem_phone;
}
public void setMem_phone(String mem_phone) {
	this.mem_phone = mem_phone;
}
public String getMem_addr() {
	return mem_addr;
}
public void setMem_addr(String mem_addr) {
	this.mem_addr = mem_addr;
}

public MemDTO(String mem_id, String mem_pwd, String mem_name, String mem_mail, String mem_phone, String mem_addr) {

	this.mem_id = mem_id;
	this.mem_pwd = mem_pwd;
	this.mem_name = mem_name;
	this.mem_mail = mem_mail;
	this.mem_phone = mem_phone;
	this.mem_addr = mem_addr;
}


public MemDTO(String mem_id, String mem_pwd, String mem_name) {
	super();
	this.mem_id = mem_id;
	this.mem_pwd = mem_pwd;
	this.mem_name = mem_name;
}

public MemDTO(String mem_id, String mem_pwd) {
	super();
	this.mem_id = mem_id;
	this.mem_pwd = mem_pwd;
}
public MemDTO() {
	super();
}

}
//vId, vPwd, vName, vMail, vPhone, vAddr;
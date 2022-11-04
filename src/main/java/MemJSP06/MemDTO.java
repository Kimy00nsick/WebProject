package MemJSP06;

public class MemDTO {
private String vId;
private String vPwd;
private String vName;
private String vMail;
private String vPhone;
private String vAddr;

public String getvId() {
	return vId;
}
public void setvId(String vId) {
	this.vId = vId;
}
public String getvPwd() {
	return vPwd;
}
public void setvPwd(String vPwd) {
	this.vPwd = vPwd;
}
public String getvName() {
	return vName;
}
public void setvName(String vName) {
	this.vName = vName;
}
public String getvMail() {
	return vMail;
}
public void setvMail(String vMail) {
	this.vMail = vMail;
}
public String getvPhone() {
	return vPhone;
}
public void setvPhone(String vPhone) {
	this.vPhone = vPhone;
}
public String getvAddr() {
	return vAddr;
}
public void setvAddr(String vAddr) {
	this.vAddr = vAddr;
}
public MemDTO(String vId, String vPwd, String vName, String vMail, String vPhone, String vAddr) {
	this.vId = vId;
	this.vPwd = vPwd;
	this.vName = vName;
	this.vMail = vMail;
	this.vPhone = vPhone;
	this.vAddr = vAddr;
}

public MemDTO(String vId, String vName, String vMail, String vPhone, String vAddr) {
	this.vId = vId;
	this.vName = vName;
	this.vMail = vMail;
	this.vPhone = vPhone;
	this.vAddr = vAddr;
}
public MemDTO(String vId, String vPwd, String vName) {
	this.vId = vId;
	this.vPwd = vPwd;
	this.vName = vName;
}


public MemDTO(String vId, String vPwd) {
	this.vId = vId;
	this.vPwd = vPwd;
}
public MemDTO() {
	super();
}

}
//vId, vPwd, vName, vMail, vPhone, vAddr;
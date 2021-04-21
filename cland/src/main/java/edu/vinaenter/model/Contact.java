package edu.vinaenter.model;

public class Contact {

	private int ct_id;
	
	
	private String ct_fullname;
	
	
	private String ct_email;
	
	
	private String ct_subject;
	
	
	private String ct_content;

	public int getCt_id() {
		return ct_id;
	}

	public void setCt_id(int ct_id) {
		this.ct_id = ct_id;
	}

	public String getCt_fullname() {
		return ct_fullname;
	}

	public void setCt_fullname(String ct_fullname) {
		this.ct_fullname = ct_fullname;
	}

	public String getCt_email() {
		return ct_email;
	}

	public void setCt_email(String ct_email) {
		this.ct_email = ct_email;
	}

	public String getCt_subject() {
		return ct_subject;
	}

	public void setCt_subject(String ct_subject) {
		this.ct_subject = ct_subject;
	}

	public String getCt_content() {
		return ct_content;
	}

	public void setCt_content(String ct_content) {
		this.ct_content = ct_content;
	}

	public Contact(int ct_id, String ct_fullname, String ct_email, String ct_subject, String ct_content) {
		super();
		this.ct_id = ct_id;
		this.ct_fullname = ct_fullname;
		this.ct_email = ct_email;
		this.ct_subject = ct_subject;
		this.ct_content = ct_content;
	}

	public Contact() {
		super();
	}
	
	
	
}

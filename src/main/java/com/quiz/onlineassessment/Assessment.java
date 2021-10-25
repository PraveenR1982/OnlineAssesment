package com.quiz.onlineassessment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Assessment {
	

	@Id
	@GeneratedValue
	Long id;
	String date;
	String assessment;
	int marks;
	String email;
	int tmarks;
	String result;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public String getAssessment() {
		return assessment;
	}
	public void setAssessment(String assessment) {
		this.assessment = assessment;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTmarks() {
		return tmarks;
	}
	public void setTmarks(int tmarks) {
		this.tmarks = tmarks;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	public Assessment(String date, String assessment, int marks, String email, int tmarks, String result) {
		super();
		this.date = date;
		this.assessment = assessment;
		this.marks = marks;
		this.email = email;
		this.tmarks = tmarks;
		this.result = result;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Assessment() {
		super();
	}
	
}

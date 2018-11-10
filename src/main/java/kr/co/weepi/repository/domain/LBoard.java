package kr.co.weepi.repository.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class LBoard {
	private int no;
	private String writer;
	private String title;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date regDate;
	private int viewCnt;
	private String category;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Lboard [no=" + no + ", writer=" + writer + ", title=" + title + ", content=" + content + ", regDate="
				+ regDate + ", viewCnt=" + viewCnt + ", category=" + category + "]";
	}
}
package kr.co.weepi.repository.domain;

public class ABoardPage {
	private int pageNo;
	private int begin;
	
	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getBegin() {
		return (pageNo-1)*10;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	
}

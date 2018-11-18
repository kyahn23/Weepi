package kr.co.weepi.util;

/** 
 * 페이징을 모듈화 하기! !
 * 
 * */

public class PageResult {
	
	private int count;
	private int pageNo;
	
	
	
	private int lastPage;
	private int beginPage;
	private int endPage;
	
	
	
	private boolean prev;
	private boolean next;
	
	//@param = 게시물 전체 개수
	public PageResult(int pageNo, int count) {
		this(pageNo,count,10,5);  
	}
	
	public PageResult(int pageNo,int count, int listSize, int tabSize) {
		this.pageNo= pageNo;
		this.count=count;
		
		lastPage = (int)Math.ceil(count /(double)listSize);
		int currTab = (pageNo-1)/tabSize+1;
		
		beginPage = (currTab-1) * tabSize+1;
		endPage =   (currTab * tabSize <lastPage) ? currTab * tabSize : lastPage;  
		
		prev = beginPage !=1;       
		next = endPage !=lastPage; 	
	}

	
	public int getCount() {
		return count;
	}

	public int getLastPage() {
		return lastPage;
	}

	public int getPageNo() {
		return pageNo;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	
}

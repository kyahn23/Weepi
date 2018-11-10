package kr.co.weepi.repository.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OBoard {
	private int no;
	private String writer;
	private String content;
	private String title;
	private Date regDate;
	private int viewCnt;
	private String category;
}

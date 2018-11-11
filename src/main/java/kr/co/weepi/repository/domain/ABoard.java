package kr.co.weepi.repository.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ABoard {
	private String writer;
	private String content;
	private String title;
	private int no;
	private int viewCnt;
	private Date regDate;
}

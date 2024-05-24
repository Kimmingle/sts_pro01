package com.morning.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class qna {
	private int no;
	private String title;
	private String content;
	private int parse;
	private int hits;
	private String resdate;
	private String id;
	private String name;
}
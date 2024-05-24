package com.morning.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class product {
	private int pno;
	private String cate;
	private String pname;
	private int price;
	private String com;
	private String img;
}

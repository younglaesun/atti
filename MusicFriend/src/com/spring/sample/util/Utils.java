package com.spring.sample.util;

import java.text.SimpleDateFormat;

import org.apache.commons.lang.RandomStringUtils;

public class Utils {
	/**
	* Primary Key 생성
	* @return String
	*/
		public static String getPrimaryKey() {
			SimpleDateFormat formatter = new SimpleDateFormat ("yyyyMMddHHmmss");//형변환
		return formatter.format(new java.util.Date()) + RandomStringUtils.randomNumeric(6);
		}//new java.util.date : 현재 시간날짜 
}

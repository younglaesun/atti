package com.spring.sample.web.test.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestService {
	
	public void test();
	
	public String gugu(int num);

	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable;
	//db에 붙이는 모든 메소드 뒤에 thorws Throwable을 사용해 예외처리를 해준다.

	public ArrayList<HashMap<String, String>> getTemp(HashMap<String, String> params) throws Throwable;

	public int getTestCount(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable;

	public int getTempCount(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getTempCon(HashMap<String, String> params) throws Throwable;

	public String insertTest(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable;

	public int updateTest(HashMap<String, String> params) throws Throwable;

	public int deleteTest(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> test11ajax() throws Throwable;
	
	

}

package com.spring.sample.web.test.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestDao {

	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getTemp(HashMap<String, String> params) throws Throwable;

	public int getTestCount(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable;

	public int getTempCount(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getTempCon(HashMap<String, String> params) throws Throwable;

	public String inserTest(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable;

	public int updateTest(HashMap<String, String> params) throws Throwable;

	public int deleteTest(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> test11ajax() throws Throwable;

	

}

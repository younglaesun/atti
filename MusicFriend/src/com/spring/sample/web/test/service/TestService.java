package com.spring.sample.web.test.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.test.dao.ITestDao;

@Service
public class TestService implements ITestService{
	
	@Autowired
	public ITestDao iTestDao;
	
	@Override
	public void test(){
		System.out.println("이거슨 서비스에서 실행된 것이오");
	}
	

	@Override
	public String gugu(int num) {
		// TODO Auto-generated method stub
		String gugu = "";
		
		for(int i = 1; i< 10; i++){
			gugu += num + " * " + i + " = " + (num * i) + "\n"; 
		}
		return gugu;
	}


	@Override
	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable{
		
		return iTestDao.getTest(params);
	}


	@Override
	public ArrayList<HashMap<String, String>> getTemp(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getTemp(params);
	}


	@Override
	public int getTestCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getTestCount(params);
	}


	@Override
	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getTestCon(params);
	}


	@Override
	public int getTempCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getTempCount(params);
	}


	@Override
	public HashMap<String, String> getTempCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getTempCon(params);
	}


	@Override
	public String insertTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.inserTest(params);
	}


	@Override
	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getMem(params);
	}


	@Override
	public int updateTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.updateTest(params);
	}


	@Override
	public int deleteTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.deleteTest(params);
	}


	@Override
	public ArrayList<HashMap<String, String>> test11ajax() throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.test11ajax();
	}



}

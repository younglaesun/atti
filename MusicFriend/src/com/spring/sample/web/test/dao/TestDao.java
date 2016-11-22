package com.spring.sample.web.test.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class TestDao implements ITestDao{
	@Autowired
	public SqlMapClient sqlMapClient;

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable {
		return (ArrayList<HashMap<String, String>>) 
							sqlMapClient.queryForList("test.getTest",params);
		//queryForList : 쿼리를 리스트로 바꿔줌(여러줄일때 사용)
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getTemp(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) 
							sqlMapClient.queryForList("test.getTemp",params);
	}

	@Override
	public int getTestCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("test.getTestCount",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)sqlMapClient.queryForObject("test.getTestCon",params);
	}

	@Override
	public int getTempCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int)sqlMapClient.queryForObject("test.getTempCount", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> getTempCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)sqlMapClient.queryForObject("test.getTempCon",params);
	}

	@Override
	public String inserTest(HashMap<String, String> params) throws Throwable {
		String res = "false";
		
		sqlMapClient.startTransaction();
		sqlMapClient.startBatch();//배치를 안쓰는 경우 오라클에 작업을 늘린다. 배치를 사용할 경우 데이터를 모아두었다가 한번에 날려줌 
		try{
			sqlMapClient.insert("test.insertTest", params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction(); //적용
			
			res = "true";
		}catch(Exception e){
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
		
		
		
		
		
		
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> getMem(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("test.getMem",params);
	}

	@Override
	public int updateTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.update("test.updateTest", params);
	}

	@Override
	public int deleteTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlMapClient.delete("test.deleteTest",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> test11ajax() throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)sqlMapClient.queryForList("test.test11ajax");
	}
	
}

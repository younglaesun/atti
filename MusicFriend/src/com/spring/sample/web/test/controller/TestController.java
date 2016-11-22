package com.spring.sample.web.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.sample.common.bean.PagingBean;
import com.spring.sample.common.service.IPagingService;
import com.spring.sample.web.test.bean.TestBean;
import com.spring.sample.web.test.service.ITestService;

@Controller
public class TestController {
	
	@Autowired //인터페이스에 클래스를 넣어줌(객체에 의존성 주입) --> 안정성 보장,보안 강화
	//autowired 한번에 인터페이스 하나씩
	public ITestService iTestService;
	
	@Autowired
	public IPagingService iPagingService;
	
	@RequestMapping(value="/test")//test가 들어오면 안에 메소드를 실행하겠다.
	public ModelAndView test(HttpServletRequest request,ModelAndView modelAndView){
		
		iTestService.test();
		
		
		//ViewResolver로 인하여
		// /WEB-INF/view/test/test.jsp로 인식
		modelAndView.setViewName("test/test");
		
		return modelAndView;
	}
	
	/*@RequestMapping(value="/test2")
	public ModelAndView test2(HttpServletRequest request, ModelAndView modelAndView){
	//HttpServletRequest : request 영역에 들어가있는 것
		System.out.println(request.getParameter("send"));
		System.out.println(request.getLocalAddr());
		System.out.println(request.getRemoteAddr());
		
		
		modelAndView.addObject("msg","나는 MSG입니다.");
		
		ArrayList<HashMap<String,String>> list = new ArrayList<HashMap<String,String>>();
		
		
		HashMap<String, String> temp;
		
		for(int i = 0; i < 10; i++){
			temp = new HashMap<String,String>();
			temp.put("title", "Test"+i);
			temp.put("writer", "Tester"+i);
			
			list.add(temp);
		}
		
		modelAndView.addObject("data", list);
		
		modelAndView.setViewName("test/test2");
		
		
		
		return modelAndView;
	}*/
	@RequestMapping(value = "/ajaxTest")
	   public @ResponseBody ResponseEntity<String> ajaxTest(
	         HttpServletRequest request,//가상의 바디(@ResponseBody)를 만들어 String만 가져오겠다.
	         ModelAndView modelAndView) throws Throwable {
	      System.out.println(request.getParameter("send"));
	      ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      
	      modelMap.put("sss", "넘어간다.");
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("content-type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	                                      responseHeaders, HttpStatus.CREATED);      
	      
	   }
	@RequestMapping(value = "/ajaxGugu")
	 public @ResponseBody ResponseEntity<String> ajaxGugu(
	         HttpServletRequest request,
	         ModelAndView modelAndView) throws Throwable {
	      int num = Integer.parseInt(request.getParameter("gugu"));
	      //문자열로 받아오기때문에 형변환!!
	      
	      String gugu = iTestService.gugu(num);
	      
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      
	      modelMap.put("gugu", gugu);
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("content-type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	                                      responseHeaders, HttpStatus.CREATED);      
	      
	   }
	
	@RequestMapping(value="/test3")
	public ModelAndView test3(HttpServletRequest request,
							  ModelAndView modelAndView)
								throws Throwable{
		
		/*String searchText = request.getParameter("searchText");
		
		ArrayList<HashMap<String, String>> list
										= iTestService.getTest(searchText);
		
		modelAndView.addObject("list",list);*/
		
		modelAndView.setViewName("test/test3");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/test4")
	public ModelAndView test4(HttpServletRequest request,
							  ModelAndView modelAndView)
								throws Throwable{
		/*ArrayList<HashMap<String, String>> list
										= iTestService.getTemp();
		
		modelAndView.addObject("list",list);*/
		
		modelAndView.setViewName("test/test4");
		
		return modelAndView;
	}
	
	/*@RequestMapping(value = "/searchTest")
	   public @ResponseBody ResponseEntity<String> searchTest(
	         HttpServletRequest request,//가상의 바디(@ResponseBody)를 만들어 String만 가져오겠다.
	         ModelAndView modelAndView) throws Throwable {
	      
	      ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      String searchText = request.getParameter("searchText");
	      
	      ArrayList<HashMap<String, String>> list
										= iTestService.getTest(searchText);
	      
	      modelMap.put("list", list);
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("content-type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	                                      responseHeaders, HttpStatus.CREATED);      
	      
	   }*/
	
	
	//TEST3
	@RequestMapping(value = "/refreshTest")
	public @ResponseBody ResponseEntity<String> refreshTest(
			HttpServletRequest request,//가상의 바디(@ResponseBody)를 만들어 String만 가져오겠다.
			@RequestParam HashMap<String,String> params, 
			ModelAndView modelAndView) throws Throwable {
					
		ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")), iTestService.getTestCount(params));
		
		params.put("start", Integer.toString(pb.getStartCount()));
		params.put("end", Integer.toString(pb.getEndCount()));
		
		ArrayList<HashMap<String, String>> list
		= iTestService.getTest(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("content-type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
				responseHeaders, HttpStatus.CREATED);      
		
	}
	
	@RequestMapping(value = "/refreshTemp")
	public @ResponseBody ResponseEntity<String> refreshTemp(
			HttpServletRequest request,//가상의 바디(@ResponseBody)를 만들어 String만 가져오겠다.
			@RequestParam HashMap<String,String> params, 
			ModelAndView modelAndView) throws Throwable {
					
		ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")), iTestService.getTempCount(params));
		
		params.put("start", Integer.toString(pb.getStartCount()));
		params.put("end", Integer.toString(pb.getEndCount()));
		
		ArrayList<HashMap<String, String>> list
		= iTestService.getTemp(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("content-type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
				responseHeaders, HttpStatus.CREATED);      
		
	}
	
	@RequestMapping(value="/test5")
	public ModelAndView test5(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable{
		
		HashMap<String, String> con = iTestService.getTestCon(params);
		
		modelAndView.addObject("con",con);
		
		modelAndView.setViewName("test/test5");
		
		return modelAndView;
		
	}
	@RequestMapping(value="/test2")
	public ModelAndView test2(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable{
		
		HashMap<String, String> con = iTestService.getTempCon(params);
		
		modelAndView.addObject("con",con);
		
		modelAndView.setViewName("test/test2");
		
		return modelAndView;
		
	}
	@RequestMapping(value="/test7")
	public ModelAndView test7(HttpServletRequest request, ModelAndView modelAndView){
		modelAndView.setViewName("test/test7");
		
		return modelAndView;
	}
	@RequestMapping(value="/insertTest")
	public @ResponseBody ResponseEntity<String> inserTest(HttpServletRequest reqeust, @RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String,Object>();
		
		String res = iTestService.insertTest(params);
		modelMap.put("res", res);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charaset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),responseHeaders,HttpStatus.CREATED);
		
	}
	@RequestMapping(value="/test8")
	public ModelAndView test8(HttpServletRequest request,HttpSession session, ModelAndView modelAndView){
		
		if(session.getAttribute("sMemNo") != null ){
			modelAndView.setViewName("redirect:test9");
		}else{
			modelAndView.setViewName("test/test8");
		}
		
		return modelAndView;
	}
	@RequestMapping(value="/test9")
	public ModelAndView test9(HttpServletRequest request,HttpSession session, ModelAndView modelAndView){
		
		if(session.getAttribute("sMemNo") != null){
			modelAndView.setViewName("test/test9");	
		}else{
			modelAndView.setViewName("redirect:test8");
		}
		
		return modelAndView;
	}
	@RequestMapping(value="/testLoginCheckAjax")
	public @ResponseBody ResponseEntity<String> testLoginCheckAjax(
			HttpServletRequest request,
			@RequestParam HashMap<String,String> params,
			//session : 사용자 별(브라우저, IP, MAC Address...) "임시"(캐시와 비슷) 공간
			HttpSession session,
			ModelAndView modelAndView) throws Throwable {
					
		ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		HashMap<String, String> mem = iTestService.getMem(params);
		
		if(mem != null && !mem.isEmpty()){
			//session에 데이터를 넣기
			session.setAttribute("sMemNo", mem.get("MEM_NO"));
			session.setAttribute("sMemId", mem.get("MEM_ID"));
			session.setAttribute("sMemNm", mem.get("MEM_NM"));
			
			modelMap.put("res", "success");
		}else{
			modelMap.put("res", "fail");
		}
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("content-type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
				responseHeaders, HttpStatus.CREATED);
	}
	@RequestMapping(value="/testLogout")
	public ModelAndView testLogout(HttpServletRequest request, HttpSession session, ModelAndView modelAndView){
		
		session.invalidate();
		
		modelAndView.setViewName("redirect:test8");
		//redirect : controller 메소드에서 메소드로 이동시켜줌, get방식 -- 데이터를 보낼때 사용하지 않는게 좋음		
		return modelAndView;
	}
	@RequestMapping(value="/test10")
	public ModelAndView test10(HttpServletRequest request, @RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable{
		
		HashMap<String, String> con = iTestService.getTestCon(params);
		
		modelAndView.addObject("con",con);
		
		modelAndView.setViewName("test/test10");
		
		return modelAndView;
		
	}
	@RequestMapping(value="/updateTest")
	public @ResponseBody ResponseEntity<String> updateTest(HttpServletRequest reqeust, @RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String,Object>();
		
		int res = iTestService.updateTest(params);
		modelMap.put("res", res);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charaset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),responseHeaders,HttpStatus.CREATED);
		
	}
	@RequestMapping(value="/deleteTest")
	public @ResponseBody ResponseEntity<String> deleteTest(HttpServletRequest reqeust, @RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String,Object>();
		
		int res = iTestService.deleteTest(params);
		modelMap.put("res", res);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charaset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),responseHeaders,HttpStatus.CREATED);
		
	}
	@RequestMapping(value="/test11")
	public ModelAndView test11(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("test/test11");
		
		return modelAndView;
		
	}
	@RequestMapping(value="/test11ajax")
	public @ResponseBody ResponseEntity<String> test11ajax(
			HttpServletRequest request,
			@RequestParam HashMap<String,String> params,
			//session : 사용자 별(브라우저, IP, MAC Address...) "임시"(캐시와 비슷) 공간
			ModelAndView modelAndView) throws Throwable {
					
		ObjectMapper mapper = new ObjectMapper(); // ObjectMapper란 map 타입을 json타입으로 만들어주는기능
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = iTestService.test11ajax();
		ArrayList<TestBean> data = new ArrayList<TestBean>();
		
		for(int s = 0; s < list.size(); s++){
			TestBean cb = new TestBean(1);
			
			cb.setName(list.get(s).get("NAME"));
			cb.getData()[0] = Integer.parseInt(String.valueOf(list.get(s).get("DATA")));
			
			data.add(cb);
		}
		modelMap.put("data", data);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("content-type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
				responseHeaders, HttpStatus.CREATED);
	}
}

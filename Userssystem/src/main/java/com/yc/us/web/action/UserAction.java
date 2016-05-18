package com.yc.us.web.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.opensymphony.xwork2.ModelDriven;
import com.yc.us.entity.User;
import com.yc.us.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
@Controller("userAction")
public class UserAction implements SessionAware,ModelDriven<User>{
	private User user;
	private Map<String, Object> session;
	@Autowired
	private UserService userService;
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}
	
	public String list(){
		List<User> users=userService.findAllUser();
		session.put("users", users);
		return "list";
	}
	
	public String detail(){
		User users = userService.findUserById(user.getId());
		session.put("users", users);
		return "detail";
	}
	
	public String allupdate(){
		User users = userService.findUserById(user.getId());
		session.put("users", users);
		return "allupdate";
	}
	
	public String update(){
		LogManager.getLogger().debug("doupdate  Info :"+user);
		boolean falg=userService.updateUserById(user);
		if(falg){
			return "updateSuccess";
		}else{
			session.put("errorMsg","ÐÞ¸ÄÊ§°Ü£¡£¡");
			return "fail";
		}
	}
	
	@Override
	public User getModel() {
		user = new User();
		return user;
	}
}

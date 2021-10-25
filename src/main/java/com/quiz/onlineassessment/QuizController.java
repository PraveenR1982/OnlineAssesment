package com.quiz.onlineassessment;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class QuizController {

	@Autowired
	UserRepository userRepository;
	@Autowired
	AssessmentRepository assessmentRepository;
	String pattern = "yyyy-MM-dd HH:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String uemail;
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/register.html")
	public String register()
	{
		return "Register";
	}
	
	@RequestMapping("/springAssessment.html")
	public String springassessment()
	{
		return "springAssessment";
	}
	@RequestMapping("/hibernateAssessment.html")
	public String hibernateassessment()
	{
		return "hibernateAssessment";
	}
	@RequestMapping( value="/registration/do", method=RequestMethod.POST)
	public String register(@RequestParam String firstname,@RequestParam String lastname,@RequestParam String email,@RequestParam String password,ModelMap model){
		User user=new User(email,firstname,lastname,password,"candidate");
		userRepository.save(user);
		model.addAttribute("fname",firstname);
		model.addAttribute("space"," ");
		model.addAttribute("lname",lastname);
		return "RegisterSuccess";
	}
	
	
	
	@RequestMapping(value="/login/do", method=RequestMethod.POST)
	public String login(@RequestParam String email,@RequestParam String password)
	{
		User users=userRepository.findByEmail(email);
		if((users!=null))
		{
			System.out.println(users.getEmail());
			uemail=users.getEmail();
			String upassword=users.getPassword();
			String utype=users.getUsertype();
			if((email.equals(uemail)) && (password.equals(upassword)) )
			{
				if(utype.equals("candidate"))
				{
					return "Candidate";
				}
				else{
					return "Admin";
					
				}
			}
			else{
				return "PasswordError";
			}
		}
		else
		{
			return "Invalid";
		}
		
	}
	@RequestMapping(value="/evaluate/spring/test", method=RequestMethod.POST)
	public String  springevaluate(@RequestParam String Question1,@RequestParam String Question2,@RequestParam String Question3,@RequestParam String Question4,@RequestParam String Question5)
	{
		int marks=0;
		if(Question1.equals("J2EE App Development Framework"))
		{
			marks+=10;
		}
		if(Question2.equals("Inversion Of Control"))
		{
			marks+=10;
		}
		if(Question3.equals("Aspect Oriented Programming"))
		{
			marks+=10;
		}
		if(Question4.equals("Application Context"))
		{
			marks+=10;
		}
		if(Question5.equals("Dispatcher Servlet"))
		{
			marks+=10;
		}
		
		if(marks>=30)
		{
			Assessment assessment=new Assessment(sdf.format(new Date()),"Spring-L1",marks,uemail,50,"passed");
			assessmentRepository.save(assessment);
			return "Success";
		}
		else{
		
			Assessment assessment=new Assessment(sdf.format(new Date()),"Spring-L1",marks,uemail,50,"Failed");
			assessmentRepository.save(assessment);
			return "Failure";
		}
		
		
	}
	@RequestMapping(value="/evaluate/hibernate/test", method=RequestMethod.POST)
	public String  hibernateevaluate(@RequestParam String Question1,@RequestParam String Question2,@RequestParam String Question3,@RequestParam String Question4,@RequestParam String Question5)
	{
	
		int marks=0;
		if(Question1.equals("Object Relational Mapping"))
		{
			marks+=10;
		}
		if(Question2.equals("uni-directional & bi-directional"))
		{
			marks+=10;
		}
		if(Question3.equals("configuration file"))
		{
			marks+=10;
		}
		if(Question4.equals("Hibernate Query Language"))
		{
			marks+=10;
		}
		if(Question5.equals("isolation levels"))
		{
			marks+=10;
		}
		
		if(marks>=30)
		{
			Assessment assessment=new Assessment(sdf.format(new Date()),"Hibernate-L1",marks,uemail,50,"passed");
			assessmentRepository.save(assessment);
			return "Success";
		}
		else{
			Assessment assessment=new Assessment(sdf.format(new Date()),"Hibernate-L1",marks,uemail,50,"passed");
			assessmentRepository.save(assessment);
			return "Failure";
		}
		
	}
	@RequestMapping("/users/all")
	public String testall(Model model){
		List<User> users=(List<User>)userRepository.findByOrderByFirstnameAsc();
		model.addAttribute("users",users);
		return "Testall";
		
	}
	@RequestMapping("/tests/all")
	public String testtaken(Model model){
		List<Assessment> assess=(List<Assessment>)assessmentRepository.findByOrderByDateAsc();;
		model.addAttribute("assess",assess);
		return "TestTakens";
		
	}
	@RequestMapping("/findall")
	@ResponseBody
	public List<User> findall()
	{
		List<User> us=new ArrayList<>();
		userRepository.findAll().forEach(us::add);
		return us;
		
	}
	@RequestMapping("/findtests")
	@ResponseBody
	public List<Assessment> findall1()
	{
		List<Assessment> us1=new ArrayList<>();
		assessmentRepository.findAll().forEach(us1::add);
		return us1;
		
	}
}

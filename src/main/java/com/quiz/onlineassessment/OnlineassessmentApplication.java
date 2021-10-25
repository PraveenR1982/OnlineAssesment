package com.quiz.onlineassessment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class OnlineassessmentApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(OnlineassessmentApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
		
		return application.sources(OnlineassessmentApplication.class);
	}
}

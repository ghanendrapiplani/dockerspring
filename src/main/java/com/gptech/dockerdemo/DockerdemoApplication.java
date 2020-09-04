package com.gptech.dockerdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerdemoApplication {

	@RequestMapping("/hello")
	public String home(){
		return "wew1";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(DockerdemoApplication.class, args);
	}

}

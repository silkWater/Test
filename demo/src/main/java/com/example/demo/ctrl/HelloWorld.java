package com.example.demo.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {

	@RequestMapping("/hello")
	public String hello() {
		return "Hello World !";
	}
	
	@RequestMapping("/aws")
	public String aws() {
		return "CI/CD Test in AWS !!";
	}
}

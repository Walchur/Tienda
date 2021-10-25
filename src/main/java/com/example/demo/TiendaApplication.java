package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;



@SpringBootApplication
@ServletComponentScan(basePackages= {"com.example.demo"})
public class TiendaApplication {
	
		public static void main(String[] args) {
		SpringApplication.run(TiendaApplication.class, args);
	}

}

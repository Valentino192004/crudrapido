package com.example.crudrapido;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example.crudrapido.controler"})
public class CrudrapidoApplication {

	public static void main(String[] args) {
		SpringApplication.run(CrudrapidoApplication.class, args);
	}

}

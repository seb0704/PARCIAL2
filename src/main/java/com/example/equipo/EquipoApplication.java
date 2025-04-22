package com.example.equipo;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(
		title = "API EQUIPO",
		version = "1.0",
		description = "Sistema de gestión para equipo",
		contact = @io.swagger.v3.oas.annotations.info.Contact(
				name = "Soporte",
				email = "jsrojassanchez@ucundinamarca.edu.co"
		)
))
public class EquipoApplication {
	public static void main(String[] args) {
		SpringApplication.run(EquipoApplication.class, args);
	}
}
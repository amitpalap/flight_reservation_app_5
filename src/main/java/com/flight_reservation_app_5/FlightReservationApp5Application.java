package com.flight_reservation_app_5;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.flight_reservation_app_5"})
public class FlightReservationApp5Application {

	public static void main(String[] args) {
		SpringApplication.run(FlightReservationApp5Application.class, args);
	}

}

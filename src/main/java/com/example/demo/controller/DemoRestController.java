package com.example.demo.controller;

import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/demo", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
public class DemoRestController {

	@GetMapping("/doGet")
	public String select() {
		return "Query Data";
	}

	@PostMapping("/doPost")
	public String insert() {
		return "Save Data";
	}

	@PutMapping("/doPut")
	public String update(Model model) {
		return "Update Data";
	}
	
	@DeleteMapping("/doDelete")
	public String delete(Model model) {
		return "Delete Data";
	}

}

package com.cn.cn_project.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/httpstatus")
public class HttpController {

    @GetMapping("/success")
    public ResponseEntity<String> success() {
        System.out.println("Status Code: 200 - OK");
        return new ResponseEntity<>("Success response: 200", HttpStatus.OK);
    }

    @GetMapping("/not-found")
    public ResponseEntity<String> notFound() {
        System.out.println("Status Code: 404 - Not Found");
        return new ResponseEntity<>("Resource not found: 404", HttpStatus.NOT_FOUND);
    }

    @GetMapping("/server-error")
    public ResponseEntity<String> serverError() {
        System.out.println("Status Code: 500 - Internal Server Error");
        return new ResponseEntity<>("Internal server error: 500", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping("/bad-request")
    public ResponseEntity<String> badRequest() {
        System.out.println("Status Code: 400 - Bad Request");
        return new ResponseEntity<>("Bad request: 400", HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/unauthorized")
    public ResponseEntity<String> unauthorized() {
        System.out.println("Status Code: 401 - Unauthorized");
        return new ResponseEntity<>("Unauthorized access: 401", HttpStatus.UNAUTHORIZED);
    }
}

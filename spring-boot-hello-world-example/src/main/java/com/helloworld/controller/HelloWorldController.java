
package com.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    
    @RequestMapping("/")
    public String hello() {
        return "<h1>Congratulations. This is the new version of the Boot Application!!!</h1>";
    }
}


package com.logeshkumarS.callmanager;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CallController {

    @GetMapping("/")
    public String checkServer() {
        return "Logesh's AI Call Manager is LIVE on Cloud! 🚀🔥";
    }

    @PostMapping(value = "/voice", produces = "application/xml")
    public String handleVoiceCall() {
        return "<Response><Say>Hello Logesh! Your Spring Boot server and Twilio are successfully connected.</Say></Response>";
    }
}
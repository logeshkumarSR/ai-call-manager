package com.logeshkumarS.callmanager;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CallController {

    @PostMapping(value = "/incoming-call", produces = "application/xml")
    public String handleIncomingCall() {
        return "<Response><Say>Logesh is currently in class. Please call back after some time.</Say></Response>";
    }
}
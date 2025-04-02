package com.min.dockerbackend.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerRestController {

    @GetMapping("/")
    public ResponseEntity<String> index() {
        return ResponseEntity.ok("백엔드에서 보낸 메시지입니다");
    }

}

package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    
    @GetMapping("/user")
    public ResponseEntity<String> endPoint1(){
        return ResponseEntity.ok("Exemplo API Rest");
    }

    
    @GetMapping("/user/{login}")
    public ResponseEntity<User> endPoint2(@PathVariable String login){

        User user = userService.find(login);

        return ResponseEntity.ok(user);
    }

    
    @PostMapping("/user")
    public ResponseEntity<User> endPoint3(@RequestBody User novoObjeto){

        userService.add(novoObjeto);

        return ResponseEntity.created(
                URI.create("user/" + novoObjeto.getLogin())
        ).body(novoObjeto);
    }

    
    @PutMapping("/user")
    public ResponseEntity<User> endPoint4(@RequestBody User objetoParaAtualizar){
        return ResponseEntity.ok(objetoParaAtualizar);
    }

   
    @DeleteMapping("/user/{login}")
    public ResponseEntity<String> endPoint5(@PathVariable String login){

        if(userService.remove(login))
            return ResponseEntity.ok("Remoção de informação com LOGIN " + login + " realizada");
        else
            return ResponseEntity.ok("Objeto para id " + login + " não encontrado");
    }
}
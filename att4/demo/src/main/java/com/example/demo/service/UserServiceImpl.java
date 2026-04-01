package com.example.demo.service;

import com.example.demo.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UserServiceImpl implements UserService {

    private ArrayList<User> users = new ArrayList<>();

    @Override
    public void add(User newUser) {
        users.add(newUser);
    }

    @Override
    public User find(String login) {
        for (User user : users) {
            if (user.getLogin().equals(login)) {
                return user;
            }
        }
        return null;
    }

    @Override
    public boolean remove(String login) {
        for (User user : users) {
            if (user.getLogin().equals(login)) {
                users.remove(user);
                return true;
            }
        }
        return false;
    }
}

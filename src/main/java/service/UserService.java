package service;

import pojo.User;

import java.util.List;

public interface UserService {
    List<User> queryUserList();
    void addUser(User user);
}

package service;

import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.User;
import pojo.UserExample;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryUserList() {
        UserExample example = new UserExample();
        example.createCriteria().andAgeIsNotNull();
        List<User> users = userMapper.selectByExample(example);
        return users;
    }

    @Override
    public void addUser(User user) {
        userMapper.insert(user);
    }
}

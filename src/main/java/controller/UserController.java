package controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import pojo.User;
import service.UserService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("toSignUp")
    public String toSignUp(){
        return "signUp";
    }

    @RequestMapping("signUp")
    public String signUp(User user, MultipartFile picFile, Model model) throws IOException {
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        String ext = FilenameUtils.getExtension(picFile.getOriginalFilename());
        picFile.transferTo(new File("/Users/molldy/upload/" + name + "." + ext));
        user.setPic(name + "." + ext);
        userService.addUser(user);
        model.addAttribute("user", user);
        return "userCheck";
    }

    @RequestMapping("userList")
    public String userList(Model model){
        List<User> userList = userService.queryUserList();
        model.addAttribute("userList", userList);
        return "userList";
    }
}

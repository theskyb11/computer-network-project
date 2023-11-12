package com.cn.cn_project.controller;

import com.cn.cn_project.model.User;
import com.cn.cn_project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Controller
//@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

//    @RequestMapping("/usermenu")
//    public String usermenu(Model model) {
//        List<User> users = userRepository.findAll();
//        model.addAttribute("users", users);
//        return "usermenu";
//    }

    @RequestMapping("/usermenu")
    public RedirectView abcd(){
        return new RedirectView("http://localhost:3000/");
    }


    @RequestMapping("/usermenu/useradd")
    public String useradd(){
        return "useradd";
    }

    @PostMapping("/useraddform")
    public String useradd(@RequestParam("name") String name,
                          @RequestParam("email") String email,
                          @RequestParam("phoneno") Long phoneno, @RequestParam("img")MultipartFile file){

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPhoneno(phoneno);

        if (!file.isEmpty()) {
            try {
                byte[] imageBytes = file.getBytes();
                user.setImg(imageBytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        userRepository.save(user);

        return "redirect:/usermenu";
    }

    @PostMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") int userId) {
        Optional<User> optionalUser = userRepository.findById(userId);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            userRepository.delete(user);
        }
        return "redirect:/usermenu";
    }

    @PostMapping("/updateUser")
    public String updateUser(@RequestParam("userId") int userId,
                             @RequestParam("name") String name,
                             @RequestParam("email") String email,
                             @RequestParam("phoneno") Long phoneno) {
        // Logic to update the user with the specified userId
        Optional<User> optionalUser = userRepository.findById(userId);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            user.setName(name);
            user.setEmail(email);
            user.setPhoneno(phoneno);
            userRepository.save(user);
        }
        return "redirect:/usermenu";
    }



    // other mappings

    @GetMapping("/updateUser")
    public String updateUserForm(@RequestParam("userId") int userId, Model model) {
        // Logic to fetch the user with the specified userId and pass it to the update form
        Optional<User> optionalUser = userRepository.findById(userId);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            model.addAttribute("user", user);
            model.addAttribute("userId", user.getId());
            model.addAttribute("name", user.getName());
            model.addAttribute("email", user.getEmail());
            model.addAttribute("phoneno", user.getPhoneno());
            return "updateUserForm"; // Return the update user form page
        } else {
            // Handle the case when the user is not found
            return "errorPage"; // Return the error page or handle the error in some other way
        }
    }


}

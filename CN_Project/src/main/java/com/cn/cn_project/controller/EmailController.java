package com.cn.cn_project.controller;

import com.cn.cn_project.model.EmailForm;
import com.cn.cn_project.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.List;

@Controller
public class EmailController {

    @RequestMapping("/smtp")
    public String smtp() {
        return "smtp";
    }

    @Autowired
    private EmailService emailService;

//    @PostMapping("/smtp_form")
//    public String sendMail(@ModelAttribute EmailForm emailForm) {
//        List<String> toEmails = Arrays.asList(emailForm.getEmail().split(","));
//        emailService.sendEmail(toEmails, emailForm.getSubject(), emailForm.getBody());
//        return "redirect:/";
//    }
@PostMapping("/smtp_form")
public String sendMail(@ModelAttribute EmailForm emailForm, @RequestParam("files") List<MultipartFile> files) {
    List<String> toEmails = Arrays.asList(emailForm.getEmail().split(","));
    emailService.sendEmailWithAttachments(toEmails, emailForm.getSubject(), emailForm.getBody(), files);
    return "redirect:/";
}


}

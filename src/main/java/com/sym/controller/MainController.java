package com.sym.controller;

import com.sym.entity.User;
import com.sym.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/7/18 0018.
 */
@Controller
@RequestMapping("")
public class MainController {

    @Autowired
    private MainService mainService;


    /**
     * 增
     *
     * @return
     */
    @RequestMapping("/toAddUser")
    public String toAddUser() {
        return "/addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user) {
        mainService.saveUser(user);
        return "redirect:/getAll";
    }

    /**
     * 删
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    public String delete(int id) {
        mainService.delete(id);
        return "redirect:/getAll";
    }

    /**
     * 改
     *
     * @return
     */
    @RequestMapping("/getUser")
    public String getUser(int id, HttpServletRequest request) {
        User user = mainService.getUser(id);
        request.setAttribute("user", user);
        return "/editUser";
    }

    @RequestMapping("/modifyUser")
    public String modifyUser(User user, HttpServletRequest request) {
        if (mainService.modifyUser(user)) {
            return "redirect:/getAll";
        } else {
            return "/error";
        }

    }

    /**
     * 查
     *
     * @param request
     * @return
     */
    @RequestMapping("/getAll")
    public String home(HttpServletRequest request) {
        List<User> users = mainService.getAllUsernames();
        request.setAttribute("users", users);
        return "index";
    }


    @RequestMapping("/json")
    public String json() {
        return "delete";
    }


    @RequestMapping("/accept")
    @ResponseBody
    public List<User> accept(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, HttpSession httpSession) {

            return mainService.getAllUsernames();
    }

    @RequestMapping("/edit")
    public String edit( HttpServletRequest request) {
        User user = mainService.getUser(Integer.valueOf(request.getParameter("id")));
        user.setUsername(request.getParameter("username"));
        if (mainService.modifyUser(user)) {
            return "redirect:/json";
        } else {
            return "/error";
        }

    }


    @RequestMapping(value = "/del",produces="text/plain;charset=UTF-8")
    public  String del(HttpServletRequest request) {
        mainService.delete(Integer.valueOf(request.getParameter("id")));
        return "redirect:/json";

    }


}
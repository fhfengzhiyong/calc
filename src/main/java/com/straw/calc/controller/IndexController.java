package com.straw.calc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author straw(fengzy)
 * @description
 * @date 5/22/2018
 */
@Controller
public class IndexController {
    @RequestMapping("index")
    public String idnex() {
        return "index";
    }
}

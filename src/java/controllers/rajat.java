package controllers; 

import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.ui.ModelMap;
@Controller  
public class rajat {  
@RequestMapping("/index")
public String index(ModelMap map) {
        return "index";
}

@RequestMapping("/login")
public String processdata(ModelMap map) {
        return "login";
}
@RequestMapping("/logout")
public String logout(ModelMap map) {
        return "logout";
}
@RequestMapping("/reg")
public String news(ModelMap map) {
        return "reg";
}

@RequestMapping("/success")
public String ok(ModelMap map) {
        return "success";
}
@RequestMapping("/welcome")
public String okcab(ModelMap map) {
        return "welcome";
}

@RequestMapping("/registration")
public String viewcab(ModelMap map) {
        return "registration";
}
   @RequestMapping("/index1")
public String index1(ModelMap map) {
        return "index1";
}
   @RequestMapping("/company")
public String company(ModelMap map) {
        return "company";
} 
 @RequestMapping("/user")
public String user(ModelMap map) {
        return "user";
} 
 @RequestMapping("/cab")
public String cab(ModelMap map) {
        return "cab";
} 
 @RequestMapping("/linguistic")
public String linguistic(ModelMap map) {
        return "linguistic";
} 
}

 
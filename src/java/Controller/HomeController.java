/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DaoImplemtation.DaoImpl;
import JavaBeans.AddUser;
import Utils.HibernateUtil;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ngucc
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String getAllUsers(Model model) {
       
        DaoImpl daoImpl=new DaoImpl();
        
        List list=daoImpl.getAllUsers();
        if(list!=null){
        model.addAttribute("userList",list);
        }  
        return "displayUser";
    }
    @RequestMapping(value = "/userDetails", method = RequestMethod.GET)
    public String userDetails(Model model) {
        return "userDetails";
    }
    @RequestMapping(value="editUser", method=RequestMethod.GET)
    public String EditUser(Model model,HttpServletRequest request){
      
           int userId=Integer.parseInt(request.getParameter("id"));
           System.out.println(userId);
           
           model.addAttribute("userId",userId);
           return "editUser";       
    }
    
}

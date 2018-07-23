/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DaoImplemtation.DaoImpl;
import Utils.HibernateUtil;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ngucc
 */
@Controller
public class EditUserHelper {
    @RequestMapping(value="EditUserHelper", method=RequestMethod.POST)
    public String EditUserHelper(@ModelAttribute("user") JavaBeans.AddUser adduser,HttpServletRequest request){
        
             System.out.println(adduser.getUname());
             System.out.println(adduser.getUage());
            
          int userId=Integer.parseInt(request.getParameter("id"));
          DaoImpl daoImpl=new DaoImpl();                        
          daoImpl.EditUserHelper(adduser, userId);
          return "redirect:/";
    }
}

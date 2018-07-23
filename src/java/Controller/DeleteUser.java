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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ngucc
 */
@Controller
public class DeleteUser {
    
    @RequestMapping(value="deleteUser", method=RequestMethod.GET)
    public String deleteUser(HttpServletRequest request){
        
           
        int userId=Integer.parseInt(request.getParameter("id"));
        System.out.println(userId);
        DaoImpl daoImpl=new DaoImpl();                        
        daoImpl.deleteUser(userId);
        return "redirect:/"; 
    }
}


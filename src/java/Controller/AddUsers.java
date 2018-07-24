/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import DaoImplemtation.DaoImpl;
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
public class AddUsers {
    
    @RequestMapping(value="addUser", method=RequestMethod.POST)
    public String addUser(@ModelAttribute("user") JavaBeans.AddUser adduser){
         
          System.out.println("In adddUser Method");
          DaoImpl daoImpl=new DaoImpl();
          daoImpl.addUser(adduser);
          
         return "redirect:/"; 
    }   
}

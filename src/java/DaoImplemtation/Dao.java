/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DaoImplemtation;

import JavaBeans.AddUser;
import java.util.List;

/**
 *
 * @author ngucc
 */
public interface Dao {
    
   public List getAllUsers();
   public void addUser(AddUser addUser);
   public void EditUserHelper(AddUser adduser,int UserId);
   public void deleteUser(int UserId); 
   
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DaoImplemtation;

import JavaBeans.AddUser;
import Utils.HibernateUtil;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ngucc
 */
public class DaoImpl implements Dao{
   
    @Override
    public List getAllUsers() {
       
        Session session=null;
        Transaction tx=null;
        List list=null;
        try{
        session= HibernateUtil.getSessionFactory().openSession();    
        tx=session.beginTransaction();  
        Query query=session.createQuery("FROM AddUser ORDER BY id ASC");
        list=query.list();
    
        tx.commit();
        }
            catch(Exception e){
              if(tx==null && tx.isActive()){
                  tx.rollback();
              }
              e.printStackTrace();
          }
          finally{
              if(session!=null && session.isOpen())
        session.close();
    }
        return list;
    }
    
    @Override
    public void addUser(AddUser adduser){
         
         Session session=null;
         Transaction tx=null;
          try{
          session= HibernateUtil.getSessionFactory().openSession();    
          tx=session.beginTransaction();
          
          session.save(adduser); 
          tx.commit();
          
          }
          catch(Exception e){
              if(tx==null && tx.isActive()){
                  tx.rollback();
              }
              e.printStackTrace();
          }
          finally{
              if(session!=null && session.isOpen())
        session.close();
          } 
        
    }
    @Override
    public void deleteUser(int userId){
        
         
          Session session=null;
          Transaction tx=null;
          try{
          session= HibernateUtil.getSessionFactory().openSession();    
          tx=session.beginTransaction();
          
           System.out.println(userId);
           Query query=session.createQuery("delete from AddUser where id= :id");
           query.setParameter("id", userId);
           int result = query.executeUpdate();
           System.out.println("Rows affected: " + result);
           tx.commit();
          }
          
         catch(Exception e){
              if(tx==null && tx.isActive()){
                  tx.rollback();
              }
              e.printStackTrace();
          }
          finally{
              if(session!=null && session.isOpen())
        session.close();
          }         
    }
    
    @Override
    public void EditUserHelper(AddUser adduser,int UserId){
        
             System.out.println(adduser.getUname());
             System.out.println(adduser.getUage());
            
          Session session=null;
          Transaction tx=null;
          try{
          session= HibernateUtil.getSessionFactory().openSession();    
          tx=session.beginTransaction(); 
          String hql = "UPDATE AddUser set username= :username "+ 
             "WHERE id = :id";  
           Query query = session.createQuery(hql);
           System.out.println(adduser.getUname());
           
         
          query.setParameter("id",UserId);
          query.setParameter("username", adduser.getUname());
          int result = query.executeUpdate();
          System.out.println("Rows affected: " + result);
          
          }
           catch(Exception e){
              if(tx==null && tx.isActive()){
                  tx.rollback();
              }
              e.printStackTrace();
          }
          finally{
              if(session!=null && session.isOpen())
        session.close();
        }         
      
    }
 }


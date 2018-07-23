/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author ngucc
 */
@Entity
@Table(name = "users")
public class AddUser implements Serializable {
   
    @Id
    @SequenceGenerator(name="seq_gen",sequenceName="users_id_seq",allocationSize=1)
    @GeneratedValue(generator="seq_gen",strategy=GenerationType.SEQUENCE)
    @Column(name = "id")
    private int Id;
    @Column(name = "username")
    private String uname;
    
    @Column(name="address")
    private String uaddress;
    
    @Column(name="age")
    private int uage;
    
    @Column(name="gender")
    private String ugender;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }  
}

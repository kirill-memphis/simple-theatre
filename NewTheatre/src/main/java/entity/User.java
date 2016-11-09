package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;
 
    @Column(name = "user_login")
    private String userLogin;
    
    @Column(name = "user_pass")
    private String userPass;
    
    @Column(name = "user_name")
    private String userName;
    
    
    
    
    public Long getUserId() {
        return userId;
    }
 
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getUserLogin() {
        return userLogin;
    }
 
    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }
    
    public String getUserPass() {
        return userPass;
    }
 
    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
    
}

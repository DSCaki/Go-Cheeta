/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package newpackage;
import java.sql.*;
/**
 *
 * @author Akthar aki
 */
public class UserDatabase {
    
     Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(user user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user_register(name,address,phone,email,password) values(?,?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getName());
           pt.setString(2, user.getAddress());
           pt.setInt(3, user.getPhoneNumber());
           pt.setString(4, user.getEmail());
           pt.setString(5, user.getPassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
    
    //user login
    public user login(String email, String password){
        user user=null;
        try{
            String query ="select * from user_register WHERE email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                user = new user();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    
    
    
    
}

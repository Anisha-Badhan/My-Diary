/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.*;
import com.mysql.jdbc.Driver;

/**
 *
 * @author User
 */
public class users {
    
    public boolean register_user(String[] users){
        
        String name=users[0];
        String email=users[1];
        String password=users[2];
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            String query ="insert into users(name,email,password)values(?,?,?)";
            
            PreparedStatement ps= conn.prepareStatement(query);
            
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            
             int result=ps.executeUpdate();
             if(result!=0){
               return true;
             }else{
               return false;
             }
             
        }
        
        catch(Exception e){
            
            System.out.print("something went wrong");
            
        
        }
    
            return false;
}

public String[] login_user(String[] users){
        
        String email=users[0];
        String password=users[1];
        String[] response=new String[3];
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            String query ="select * from users where email='"+email+"' and password='"+password+"';";
            
            Statement stmt=conn.createStatement();
            
            ResultSet rs=stmt.executeQuery(query);
            String name="";
                while(rs.next()){
                    response[1]=rs.getString("name");
                    response[0]=rs.getString("ID");
                    response[2]=rs.getString("email");
                }
                return response;
        }
            
        catch(Exception e){
            
            response[0]= "Error-something went wrong!!";
            return response;     
        
        }
    
            
}


}

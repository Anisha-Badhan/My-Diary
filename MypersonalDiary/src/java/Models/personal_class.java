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
public class personal_class {

    public boolean create_text(String[] personal){
        String title=personal[0];
        String text=personal[1];
        
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            
            String query ="insert into personal(title,text)values(?,?)";
            
            PreparedStatement ps= conn.prepareStatement(query);
            
            ps.setString(1, title);
            ps.setString(2, text);
            
           
           int result=ps.executeUpdate();
              if(result!=0){
               return true;
             }else{
               return false;
             }  }
        catch(Exception e){
            
            System.out.print("something went wrong");
            
       
        } return false;
    
            

    }
    
    public boolean update_text(String[] personal){
        String title=personal[0];
        String text=personal[1];
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            String query ="update personal set text='?' where title='"+title+"'";
                   
            PreparedStatement ps= conn.prepareStatement(query);
            
            ps.setString(1, title);
            ps.setString(2, text);
           
            int result=ps.executeUpdate();
             if(result!=0){
               return true;
             }else{
               return false;
             }}
        catch(Exception e){
            
            System.out.print("something went wrong");
            
        
        }
    
            return false;

    }
    
    public boolean delete_text(String[] personal){
        String title=personal[0];
        String text=personal[1];
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            String query ="delete from personal where title='"+title+"'";
                   
            PreparedStatement ps= conn.prepareStatement(query);
            
            ps.setString(1, title);
            ps.setString(2, text);
           
            int result=ps.executeUpdate();
             if(result!=0){
               return true;
             }else{
               return false;
             }}
        catch(Exception e){
            
            System.out.print("something went wrong");
            
        
        }
           
            return false;

    }
    
    public boolean open_journal(String[] personal){
        String title=personal[0];
        String ID=personal[1];
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/java101","root","password");
            String query ="select * from personal where title='"+title+"'";
                   
            PreparedStatement ps= conn.prepareStatement(query);
            
            ps.setString(1, title);
            ps.setString(2, ID);
           
            int result=ps.executeUpdate();
             if(result!=0){
               return true;
             }else{
               return false;
             }}
        catch(Exception e){
            
            System.out.print("something went wrong");
            
        
        }
    
            return false;

    }
}

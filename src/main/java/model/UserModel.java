package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.UserBeans;
import bean.UserOrder;
import javaWebApplication.utility.JDBCDataSource;
import jdk.nashorn.internal.ir.WhileNode;

public class UserModel {
  
  public static long nextPk() {
    long pk = 0;
    Connection conn;
    try {
      conn = JDBCDataSource.getConnection();
      PreparedStatement stmt = conn.prepareStatement("select Max(id) from user");
      ResultSet rs = stmt.executeQuery();
      while(rs.next()){
        pk = rs.getLong(1);
      }
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return pk+1;
    
  }
  public static long addUser(UserBeans user) {
	    int i = 0;
	    try {
	      Connection conn = JDBCDataSource.getConnection();
	      PreparedStatement stmt = conn.prepareStatement("insert into `user` VALUES(?,?,?,?,?,?,?);");
	      stmt.setLong(1 , nextPk());
	      stmt.setString(2 , user.getFirstName() );
	      stmt.setString(3 , user.getLastName() );
	      stmt.setString(4 , user.getLogin() );
	      stmt.setString(5 , user.getPassword() );
	      stmt.setDate(6 , new java.sql.Date(user.getDob().getTime()) );
	      stmt.setString(7 , user.getMobileNo() );
	        i =   stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    
	    
	    return i;
	 }
  
  
  
  public static UserBeans  UserLogin(String login,String password) {
	    Connection con;
	    UserBeans user = null;
	    try {
	      con = JDBCDataSource.getConnection();
	      PreparedStatement stmt = con.prepareStatement("Select * from user where login=? and password = ?");
	      stmt.setString(1,login);
	      stmt.setString(2,password);
	      ResultSet rs = stmt.executeQuery();
	      if(rs.next()) {
		        user = new UserBeans();
		        System.out.println("ID: "+rs.getLong("id"));
		        user.setId(rs.getLong("id"));
		        user.setFirstName(rs.getString("fname"));
		        user.setLastName(rs.getString("lname"));
		        user.setLogin(rs.getString("login"));
		        user.setPassword(rs.getString("password"));
		        
		        user.setMobileNo(rs.getString("mobile"));  
		      }
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    
	    return user;
	  }
  public static long Orders(UserOrder order) {
	    int i = 0;
	    
	  
	    try {
	      Connection conn = JDBCDataSource.getConnection();
	      
	      PreparedStatement stmt = conn.prepareStatement("INSERT INTO `order` VALUES(?,?,?,?,?);");
	      
	      stmt.setString(1 , order.getname());
	      stmt.setString(2 , order.getMaindish() );
	      stmt.setString(3 , order.getDrinks() );
	      stmt.setString(4 , order.getExtras() );
	      stmt.setString(5 , order.getday() );
	     
	        i =   stmt.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    
	    
	    
	  
	return i;
  }
  public static ArrayList<UserOrder> list() {
      ArrayList<UserOrder> list=new ArrayList<UserOrder>();
      Connection conn=null;
      try {
         conn=JDBCDataSource.getConnection();
        PreparedStatement pstmt=conn.prepareStatement("Select * from order");
        ResultSet rs= pstmt.executeQuery();
        while (rs.next()) {
        UserOrder user=new UserOrder();
       
        user.setname(rs.getString("name"));
        user.setMaindish(rs.getString("Maindish"));
        user.setDrinks(rs.getString("Drinks"));
        user.setExtras(rs.getString("Extras"));
        
        user.setday(rs.getString("day"));
        list.add(user);
        }
      } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }finally {
        JDBCDataSource.closeConnection(conn);
      }
      return list;
    }
  
}
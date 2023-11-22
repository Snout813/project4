package com.example.JSPCRUD_Final;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.mariadb.jdbc.Driver");
	        con= DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p233_21900467", "p233_21900467", "AiL6ah");
	    }catch(Exception e){
	    	System.out.println("error");
	    }  
	    return con;  
	}  
	
	public static void main(String [] ars) {
		Connection conn = getConnection();
		if(conn != null)
			System.out.println("DB 연결됨!");
		else
			System.out.println("DB 연결중 오류 !");
	}
}
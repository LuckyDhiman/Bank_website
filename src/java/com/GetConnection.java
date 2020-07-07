package com;

import java.sql.*;
public class GetConnection {
    private static Connection conn;
    public static Connection giveConnection(){
        try{
            String url="jdbc:oracle:thin:@localhost:1521:xe";
            if(conn==null){
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conn=DriverManager.getConnection(url,"lucky","7300");
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return(conn);
    

        
    }
}

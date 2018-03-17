package net.rrs.web.util;

import java.sql.DriverManager;
import java.sql.Connection;

public class Conn {
	public Connection getCon() {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/studio?useUnicode=true&characterEncoding=utf-8";
				String user="root";
				String password="lj456852";
				Connection conn=DriverManager.getConnection(url,user,password);
				System.out.println(conn.getMetaData().getURL());
				return conn;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
	}
}

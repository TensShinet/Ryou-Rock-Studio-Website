package net.rrs.web.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.rrs.web.model.AccountBean;

public class UserCheck {
	private Connection conn;
	private PreparedStatement statement;
	public UserCheck() {
		conn = new net.rrs.web.util.Conn().getCon();
	}
	public boolean valiUser(AccountBean user) {
		if (user == null) {
			return false;
		}
		try {
			statement = conn.prepareStatement("select * from usertable where username=? and password=?");
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getPassword());
			ResultSet rSet = statement.executeQuery();
			System.out.println(rSet);
			if (rSet.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
}

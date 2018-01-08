package com.alacriti.dao;

import java.sql.*;

import com.alacriti.bean.User;

public class UserDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://192.168.35.160/trainee17", "trainee17",
					"trainee@alac");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int register(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into aniruddhab_register(name,password,code,email) values(?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getCode());
			ps.setString(4, u.getEmail());
			//ps.setString(5, u.getSex());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static boolean login(User u) {
		boolean status = false;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from aniruddhab_register where email = ? and password = ?");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int addInterests(User u) {
		int status = 0;
		try {
			String email = u.getEmail();
			Connection con = getConnection();
			String sqlCmd1 = ("select id from aniruddhab_register where email = '"+email+"'");
			Statement stmt1 = con.createStatement();
			ResultSet rs = stmt1.executeQuery(sqlCmd1);
			if(rs.next()) {
				int id = rs.getInt(1);
				PreparedStatement ps = con
						.prepareStatement("insert into aniruddhab_interests values(?,?)");
				ps.setInt(1, id);
				ps.setString(2, u.getInterests());
				status = ps.executeUpdate();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.dao;

import com.tuandenn.fptaccommodation.dal.DBContext;
import com.tuandenn.fptaccommodation.dto.User;
import com.tuandenn.fptaccommodation.dto.UserInformation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MrTuan
 */
public class UserDAO extends DBContext {

    public List<User> getAll() {
        DBContext dBContext = new DBContext();
        List<User> list = new ArrayList<>();
        try {
            Connection connection = dBContext.getConnection();

            String sql = "select * from [User]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.set_Admin(rs.getBoolean("isAdmin"));
                user.setCreateAt(rs.getString("createAt"));
                list.add(user);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public UserInformation login(String email,String password) {
        DBContext dBContext = new DBContext();
        UserInformation userInf = new UserInformation();
        try {
            Connection connection = dBContext.getConnection();
            String sql = "select u.email,uf.fullname,uf.bio,uf.gender,uf.avatar from [User] u inner join UserInformation uf\n"
                    + "on u.email=uf.email\n"
                    + "where u.email=? and u.[password]=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                userInf.setEmail(rs.getString("email"));
                userInf.setFullname(rs.getString("fullname"));
                userInf.setBio(rs.getString("bio"));
                userInf.setGender(rs.getBoolean("gender"));
                userInf.setAvatar(rs.getString("avatar"));
            }
            dBContext.closeConnection(connection, ps, rs);
        } catch (SQLException e) {
            Logger.getLogger(User.class.toString()).log(Level.SEVERE, null, e);
        }
        return userInf;
    }

    public static void main(String[] args) {
        UserDAO u = new UserDAO();
//        System.out.println(u.getOne("admin", "admin@123").getBio());
//        List<User> list=u.getAll();
//        for (User user : list) {
//            System.out.println(user.getEmail());
//        }
//        System.out.println(u.getAll());
    }
}

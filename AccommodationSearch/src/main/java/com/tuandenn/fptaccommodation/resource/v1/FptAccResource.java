/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.resource.v1;

import com.tuandenn.fptaccommodation.dao.UserDAO;
import com.tuandenn.fptaccommodation.dto.User;
import com.tuandenn.fptaccommodation.dto.UserInformation;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

/**
 *
 * @author MrTuan
 */
@Path("v1/accommodation")
public class FptAccResource {


//    @GET
//    @Produces(MediaType.APPLICATION_JSON)
//    public List<User> getAll() {
//        UserDAO userDao = new UserDAO();
//        return userDao.getAll();
//    }

    @GET
    @Path("login")
    @Produces(MediaType.APPLICATION_JSON)
    public UserInformation login(@QueryParam("email") String email, @QueryParam("password") String password) {
        UserDAO userDao = new UserDAO();
        UserInformation userInf= userDao.login(email,password);
        return userInf;
    }
    
}

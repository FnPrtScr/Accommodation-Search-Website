/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.resource.v1;

import com.tuandenn.fptaccommodation.dto.Accommodation;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

/**
 *
 * @author MrTuan
 */
@Path("v1/accommondation")
public class FptAccResource {

//    @GET
//    @Produces(MediaType.TEXT_PLAIN)
//    public String sayHello() {
//        return "Hello world!";
//    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Accommodation getAccommondation(){
        return new Accommodation(1, "Lop Hoc Rung Ron", "Kim Dong", 1, 2022);
    }
}

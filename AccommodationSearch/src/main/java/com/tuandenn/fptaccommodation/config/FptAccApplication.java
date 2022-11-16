/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.config;

import jakarta.ws.rs.ApplicationPath;
import org.glassfish.jersey.server.ResourceConfig;

/**
 *
 * @author MrTuan
 */
@ApplicationPath("api")
public class FptAccApplication extends ResourceConfig{
    public FptAccApplication(){
        packages("com.tuandenn.fptaccommodation.resource");
        
    }
}

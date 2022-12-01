/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author MrTuan
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class UserInformation {
    private String email;
    private String fullname;
    private String bio;
    private boolean gender;
    private String avatar;
}

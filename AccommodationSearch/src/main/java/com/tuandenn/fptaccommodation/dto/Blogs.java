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
public class Blogs {
    private String email;
    private String title;
    private String content;
    private String image;
    private boolean status;
    private String createAt;
    private int cid;
}

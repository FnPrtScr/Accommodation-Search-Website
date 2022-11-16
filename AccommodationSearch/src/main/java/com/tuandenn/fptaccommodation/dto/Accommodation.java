/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tuandenn.fptaccommodation.dto;

import java.io.Serializable;
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
public class Accommodation implements Serializable{
    private int id;
    private String title;
    private String author;
    private int edition;
    private int publishedYear;
}

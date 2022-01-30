package com.example.springshop.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {

    private Long id;
    private String title;
    private String description;
    private Integer price;
    private String city;
    private String author;
}

//
//  Product.swift
//  E-commerce App
//
//  Created by student on 03/06/24.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(
        name: "Leather Couch",
        image: "image1",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "IKEA",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),
    
    Product(
        name: "Nice Couch", 
        image: "image2",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "Walmart",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),

    
    Product(
        name: "Gray Couch",
        image: "image3",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "Home Depo",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),

    
    Product(
        name: "Beautiful Couch",
        image: "image4",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "IKEA",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),

    
    Product(
        name: "Outdoor Couch", 
        image: "image5",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "Home Depo",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),

    
    Product(
        name: "Green Couch",
        image: "image6",
        description: "Elevate your living room with our chic, versatile furniture collection. From plush sofas to stylish               coffee tables, each piece is crafted for comfort and designed to inspire.Transform your living room into a    haven of relaxation and style with our curated furniture range. Discover comfort, durability, and timeless elegance in every piece.",
        supplier: "Walmart",
        price: 350,
        width: "200 cm",
        height: "135 cm",
        diameter: "105 cm"),

]



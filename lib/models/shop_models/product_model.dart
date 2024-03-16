import 'package:flutter/material.dart';

class Product {
  String name;
  String category;
  double price;
  double discount;
  List<ProductImage> images;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.discount,
    required this.images,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'price': price,
      'discount': discount,
      'images': images.map((image) => image.toJson()).toList(),
    };
  }
}

class ProductImage {
  String imageUrl;

  ProductImage({required this.imageUrl});

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
    };
  }
}

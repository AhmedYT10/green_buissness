import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price , id;
  final String size;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List <Product> desks = [
  Product(
      id: 1,
      title: "wooden desk",
      price: 300,
      size: "140 x 160",
      description: dummyText,
      image: "assets/shop/desks/office1.jpg",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "sugarcane desk",
      price: 280,
      size: "120 x 140",
      description: dummyText,
      image: "assets/shop/desks/office desk 2.jpg",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "simple desk",
      price: 410,
      size: "130 x 150",
      description: dummyText,
      image: "assets/shop/desks/office desk 3.jpg",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "brown sugarcane desk",
      price: 350,
      size: "160 x 200",
      description: dummyText,
      image: "assets/shop/desks/office desk 4.jpg",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "modern desk",
      price: 400,
      size: "150 x170",
      description: dummyText,
      image: "assets/shop/desks/office5.jpg",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "black sugarcane desk",
    price: 500,
    size: "120 x 180",
    description: dummyText,
    image: "assets/shop/desks/desk 6.jpg",
    color: const Color(0xFFAEAEAE),
  ),
];
List <Product> panels = [
  Product(
      id: 1,
      title: "Solar Panel1",
      price: 300,
      size: "140 x 160",
      description: dummyText,
      image: "assets/shop/panels/panel.jpg",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Solar Panel2",
      price: 280,
      size: "120 x 140",
      description: dummyText,
      image: "assets/shop/panels/solar panel 1.jpg",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Solar Panel3",
      price: 410,
      size: "130 x 150",
      description: dummyText,
      image: "assets/shop/panels/solarpanel2",
      color: const Color(0xFF989493)),
];
List <Product> plants = [
  Product(
      id: 1,
      title: "Plant 1",
      price: 300,
      size: "140 x 160",
      description: dummyText,
      image: "assets/shop/plants/houseplants-t.jpg",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Plant 2",
      price: 280,
      size: "120 x 140",
      description: dummyText,
      image: "assets/shop/plants/plant.jpg",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Plant 3",
      price: 410,
      size: "130 x 150",
      description: dummyText,
      image: "assets/shop/plants/plant office1.jpg",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Plant 4",
      price: 350,
      size: "160 x 200",
      description: dummyText,
      image: "assets/shop/plants/plant office2.jpg",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Plant 5",
      price: 400,
      size: "150 x170",
      description: dummyText,
      image: "assets/shop/plants/plant office2.jpg",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Plant 6",
    price: 500,
    size: "120 x 180",
    description: dummyText,
    image: "assets/shop/plants/plantoffice.jpg",
    color: const Color(0xFFAEAEAE),
  ),
];
List <Product> places = [
  Product(
      id: 1,
      title: "place 1",
      price: 300,
      size: "140 x 160",
      description: dummyText,
      image: "assets/shop/places/place.jpg",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Place 2",
      price: 280,
      size: "120 x 140",
      description: dummyText,
      image: "assets/shop/places/wooden Place.jpg",
      color: const Color(0xFFD3A984)),
];




String dummyText =
    "These Bags have alot of advantages like its brand is good and you can buy it with a low price.";
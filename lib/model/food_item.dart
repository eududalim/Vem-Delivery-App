import 'package:flutter/foundation.dart';

FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Beach BBQ Burger",
    anunciante: "Las Vegas Hotel",
    price: 14.49,
    category: 'burguer',
    imgUrl:
        "https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/480x240/54ca71fb94ad3_-_5summer_skills_burger_470_0808-de.jpg",
  ),
  FoodItem(
    id: 2,
    title: "Kick Ass Burgers",
    anunciante: "Dudleys",
    price: 11.99,
    category: 'burguer',
    imgUrl:
        "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 3,
    title: "Supreme Pizza Burger",
    anunciante: "Golf Course",
    price: 8.49,
    category: 'burguer',
    imgUrl: "https://c.tfstatic.com/w_656,h_368,c_fill,g_auto:subject,q_auto,f_auto/restaurant_photos/655/591655/source/riqs-burguer-sugestao-prato-856ab.jpg",
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    anunciante: "Las Vegas Hotel",
    price: 14.49,
    category: 'burguer',
    imgUrl: "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    anunciante: "Las Vegas Hotel",
    price: 14.49,
    category: 'burguer',
    imgUrl: "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    anunciante: "Las Vegas Hotel",
    price: 14.49,
    category: 'burguer',
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/03/04/20/08/burger-3199088__340.jpg",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String anunciante;
  double price;
  String imgUrl;
  int quantity;
  String category;

  FoodItem({
    @required this.id,
    @required this.title,
    @required this.anunciante,
    @required this.price,
    @required this.imgUrl,
    @required this.category,
    this.quantity = 1,
  });

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}

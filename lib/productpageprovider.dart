import 'package:flutter/material.dart';

class Productpageprovider extends ChangeNotifier{
  List<Map> Data=[
      {
        "type":"Food",
        "image":"assets/images/avacado.png",
        "name":"Avacado Salad",
        "price":"50.00",
        "time":"20min",
        "rating":"4.0",
        "calorie":"270Kcal"
        
      },
      {
        "type":"Fruits",
        "image":"assets/images/salad.png",
        "name":"Ceaser Salad",
        "price":"56.50",
        "time":"13min",
        "rating":"4.4",
        "calorie":"470Kcal"
      },
      {
        "type":"Vegetables",
        "image":"assets/images/double burger.png",
        "name":"Burger",
        "price":"51.00",
        "time":"24min",
        "rating":"3.9",
        "calorie":"440Kcal"
      },
      {
        "type":"Grocery",
        "image":"assets/images/fruitssalad.png",
        "name":"Fruits Salad ",
        "price":"45.00",
        "time":"15min",
        "rating":"4.8",
        "calorie":"300Kcal"
      }
    ];
  int _count=0;
  int get count=>_count;

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
  
}
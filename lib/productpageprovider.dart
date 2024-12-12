import 'package:flutter/material.dart';

class Productpageprovider extends ChangeNotifier{
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
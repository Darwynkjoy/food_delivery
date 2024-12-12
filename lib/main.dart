import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/productpageprovider.dart';
import 'package:fooddeliveryapp/welcomepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Productpageprovider(),
      child: MaterialApp(
      title: 'delivery app',
      debugShowCheckedModeBanner: false,
      home: Welcomepage(),
    ),
    );
  }
}
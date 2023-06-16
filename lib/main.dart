import 'package:assignment/product_list.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
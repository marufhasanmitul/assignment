import 'package:assignment/Crud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Source code Follow
main(){
  runApp(const MyApp());//Applicaton
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme:ThemeData(primarySwatch: Colors.grey) ,
        darkTheme: ThemeData(
            primarySwatch: Colors.amber
        ),
        theme:ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
          )
        ) ,
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: Crud());
  }
}



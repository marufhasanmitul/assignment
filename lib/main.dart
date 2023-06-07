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
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{

  MySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar=============
      appBar: AppBar(
        title: Text("My First app"),
        titleSpacing: 0,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar("I am comments", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Setting", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Email", context);
              },
              icon: Icon(Icons.email)),
        ],
      ),








    );


  }
}
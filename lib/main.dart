import 'package:assignment/Fragment/Favorite.dart';
import 'package:assignment/Fragment/Home.dart';
import 'package:assignment/Fragment/Profile.dart';
import 'package:assignment/Fragment/Search.dart';
import 'package:assignment/Fragment/Social.dart';
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




  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 5,
       child: Scaffold(
         appBar: AppBar(
           title: Text('Tab Layout'),
           centerTitle: true,
           bottom: TabBar(
             isScrollable: true,
             tabs: [
               Tab(icon: Icon(Icons.home),text: "Home",),
               Tab(icon: Icon(Icons.search),text: "Search",),
               Tab(icon: Icon(Icons.person),text: "Profile",),
               Tab(icon: Icon(Icons.favorite),text: "favorite",),
               Tab(icon: Icon(Icons.social_distance),text: "Social",),


             ],
           ),
         ),
         body: TabBarView(
           children: [
             Home(),
             Search(),
             Profile(),
             Favorite(),
             Social()


           ],
         ),
       )

   );


  }
}

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
   return Scaffold(
     appBar: AppBar(
       title:Text('Home') ,
     ),
     body:Center(
       child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           elevation: 60,
           color: Colors.green,
           shadowColor: Colors.yellow,
           child: SizedBox(
               height: 200,
               width: 200,
               child: Center(child: Text("This is a Card",style: TextStyle(color: Colors.white),))
           ),
         ),
       ),
     ) ,


   );


  }
}


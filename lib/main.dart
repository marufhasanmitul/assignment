
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
     body:
     Center(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           CircularProgressIndicator(
              color: Colors.purple,
              strokeWidth: 5,
              backgroundColor: Colors.grey,
           ),
           SizedBox(
             height: 100,
             width: 50,
           ),
           LinearProgressIndicator(
              minHeight: 10,
              backgroundColor: Colors.red,
             color: Colors.purple,
           )


         ],
       ),
     ) ,


   );


  }
}


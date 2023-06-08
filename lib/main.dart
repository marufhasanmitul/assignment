
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

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1('This is  Form Home text') ));
           }, child: Text('Go Activity 1')),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2('This is Home Data') ));
           }, child: Text('Go Activity 2')),
         ],
       ),
     ),
   );


  }
}

class Activity1 extends StatelessWidget{
  String msg;
    Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(msg),

      ),

      body:Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2('This is Home Data')));
          },
          child: Text('Activity 2 Go'),

        ),
      )  ,
    );


  }
}

class Activity2 extends StatelessWidget{
  String msg;
  Activity2(
      this.msg,
      {super.key}
      );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(msg) ,
      ),
    );


  }
}

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
  TextEditingController _emailTextEditorController=TextEditingController();
  TextEditingController _userNameEditTextController=TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text('Home') ,
     ),
     body:
     Center(
       child: FractionallySizedBox(
         widthFactor: 0.5,
         heightFactor: 0.3,
           child: Container(
             color: Colors.red,
           ),
       ),
     )
     ,


   );


  }
}


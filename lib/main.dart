
import 'package:assignment/style.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    //Device Screen Size
    var size=MediaQuery.of(context).size;
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    var orentation=MediaQuery.of(context).orientation;//Screen orientation


    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hellow Maruf ',style: HeadLine(context),),

          ],
        ),
      ),


    );
  }
}
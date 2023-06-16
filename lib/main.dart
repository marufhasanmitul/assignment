
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:
      Container(
        height: 100,
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                  flex:1 ,
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                  flex: 3,
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                  flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
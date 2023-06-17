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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body:
      Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomRight,
                  child:Text(
                    'One',
                    style: TextStyle(color: Colors.white),
                  ),
                ), //Container
                Positioned(
                  top: 80,
                  left: 80,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.black,
                  ),
                ), //Container
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                ), //Container
              ], //<Widget>[]
            ), //Stack
          ), //Center
        ), //SizedBox
      )
    );
  }
}

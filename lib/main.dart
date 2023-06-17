import 'package:responsive_grid/responsive_grid.dart';
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


    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:
      Center(
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
                child: Container(
                  height:100 ,
                  color: Colors.orange,
                )
            ),
            ResponsiveGridCol(
                xl: 4,
                lg: 6,
                md:8 ,
                sm: 9,
                xs: 12,
                child: Container(
                  height:100 ,
                  color: Colors.green,
                )
            ),
          ],
        ),
      ),



    );
  }
}
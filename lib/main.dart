import 'package:assignment/Style.dart';
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

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomePageUI();
  }
}

class HomePageUI extends State<HomePage>{

  Map<String,String> FromValue={
    "Num1":"",
    "Num2":"",
    "Num3":""

  };
  double SUM = 0;


  @override
  Widget build(BuildContext context) {
    MyInputChange(InputKey,InputValue){
      setState(() {
        FromValue.update(InputKey, (value) =>InputValue);
      });

    }

    addAllNumber(){
      double SUM =FromValue['num1']!+ FromValue['num2']!+ FromValue['num3']!;
    }




    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [

            Center(child: Text(SUM,style: HeadTextStyle()),),
            SizedBox(height: 10),
            TextField(
              onChanged: (value){
                MyInputChange("Num1",value);
              },
              decoration:applyStyle("First Name"),
            ),
            SizedBox(height: 10),
            TextField(
                onChanged: (value){
                  MyInputChange("Num2",value);
                },
                decoration:applyStyle("Second Numbar")

        ),
            SizedBox(height: 10),
            TextField(
                onChanged: (value){
                  MyInputChange("Num3",value);
                },
                decoration:applyStyle("Third Numbar")

            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:(){},
                  child: Text('Add'),
                  style:buttonStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
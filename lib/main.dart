import 'package:assignment/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class HomeActivity extends StatelessWidget {


      String welcomeMessage="Hello";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statless'),
        backgroundColor: Colors.blue,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.shopping_cart)),
        ],

      ),

      body: Center(child: Text(welcomeMessage,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),)),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            welcomeMessage='Hi';
            print(welcomeMessage);
          },
          label: Text('Change Text')
      ),



    );


  }



}
///IntroPart /Widget
class GoodScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    print("Calling Stape:1");
    return _GoodScreenState();
  }
}
///widget Part
class _GoodScreenState extends State<GoodScreen>{
  String welcomeMessage="Hi";

  @override
  void initState() {
    super.initState();
    print("Calling Stape-2");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Calling Stape-3");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statless'),
        backgroundColor: Colors.blue,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.shopping_cart)),
        ],

      ),

      body: Center(child: Text(welcomeMessage,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),)),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            welcomeMessage=welcomeMessage=='Hi' ? 'Hello': 'Hi';
            print(welcomeMessage);
            setState(() {

            });
          },
          label: Text('Change Text')
      ),
    );
  }
}




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
   );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widget'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body:
      Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             //Elevated Button
             ElevatedButton(
               onPressed: () {},
               child: Text('Btn'),
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.red,
                 //minimumSize: Size(100, 30),
                 elevation: 5,
                 padding: EdgeInsets.symmetric(horizontal: 100,vertical: 40),
                 shadowColor: Colors.purple,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12),
                   side: BorderSide(
                     color: Colors.purple,
                     width: 3
                   )
                 )


               ),


              ),
             //Text Button
             TextButton(

                 onPressed: (){},
                 child: Text('Text Button',style: TextStyle(color: Colors.white),),
                 style:TextButton.styleFrom(
                   backgroundColor: Colors.green,
                   elevation: 5,
                   padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10)
                 ) ,
             ),
             //outLine Button
             OutlinedButton(
                 onPressed: (){},
                 child: Text('OuteLine Button'),
                 style: OutlinedButton.styleFrom(
                   side: BorderSide(
                     color: Colors.blue
                   )
                 ),
             ),
             //Outline Btn with Icon
             OutlinedButton.icon(
                 onPressed: (){
                   },
                 icon: Icon(Icons.account_box_outlined),
                 label: Text('Outline Btn with Icon'),
                 style:OutlinedButton.styleFrom(
                   side: BorderSide(color: Colors.red)
                 ) ,

             ),
             //Icon Btn
             IconButton(
                 onPressed: (){},
                 icon:Icon(Icons.add)
             ),
             
             Image.asset('Images/b.jpg')


           ],
         ),
      ),
      


    );
  }
}


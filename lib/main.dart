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
      SingleChildScrollView(
        child: Center(
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
               //Gesture Decetor
               GestureDetector(
                   child: Image.asset('images/b.jpg',width: 100,),
                   onTap:(){
                     print('Press');
                   } ,
                 onDoubleTap: (){
                     print('Duoble tap');
                 },
                 onLongPress: () {
                   print('long press');
                 },


               ),
               //custom Btn
               InkWell(
                 splashColor: Colors.yellow,
                 onLongPress: () {
                   print('long press');
                 },
                 onDoubleTap: () {
                   print('double pressed');
                 },
                 onTap: () {
                   print('Pressed');
                 },
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('Custom Btn'),
                   ),


               ),
               //Card
               Card(
                 elevation: 5,
                 shadowColor: Colors.purple,
                 color: Colors.grey,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Maruf Hasan'),
                 ),
               ),

               //Text field

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child:
                 TextField(
                   controller: TextEditingController(),
                   obscureText: true,
                   onSubmitted: (value){
                     print(value);
                   },
                   textAlign: TextAlign.center,
                 ),

               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'User Name',
                     hintText: 'Enter Your User Name'
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'PassWord',
                       hintText: 'Enter Your PassWord'
                   ),
                 ),
               ),
               TextButton(
                 style: TextButton.styleFrom(
                     backgroundColor: Colors.green,
                     elevation: 5,
                     padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10)
                 ),

                 child: Text('Sign In',style: TextStyle(color: Colors.white),),
                 onPressed: (){},
               )


             ],
           ),
        ),
      ),
      


    );
  }
}


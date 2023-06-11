
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
     Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: TextField(
             controller: _emailTextEditorController,
             decoration: InputDecoration(
               label:Text('Email'),
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.purple),
               )
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: TextField(
             controller: _userNameEditTextController,
             decoration: InputDecoration(
                 label:Text('User Name',style: TextStyle(
                   color: Colors.purple
                 ),),
                 hintText: 'Enter Your User name',
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.purple,width: 2)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide:BorderSide(
                     color: Colors.red,
                     width: 3

                   )
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.purple),
                 )
             ),
           ),
         ),
         ElevatedButton(
             onPressed: (){
               print(_emailTextEditorController.text);
               _emailTextEditorController.clear();
             },
             child:Text('Submit')
         ),

         ListTile(
           onTap: (){
             print("Traped");
           },
           onLongPress: (){
             print("OnLongPresseed");
           },
           title: Text('UserName'),
           subtitle: Text('Designation'),
           leading: Icon(Icons.person,size: 40,),
           trailing: Icon(
             Icons.arrow_right_alt
           ),
           tileColor: Colors.red.withOpacity(0.3),
           contentPadding: EdgeInsets.symmetric(horizontal: 16),
         ),

         Wrap(
           alignment: WrapAlignment.spaceBetween,
           spacing: 20,
           children: [
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             ),
             ElevatedButton(
                 onPressed: (){
                   print(_emailTextEditorController.text);
                   _emailTextEditorController.clear();
                 },
                 child:Text('Submit')
             )
           ],
         )


       ],
     ),


   );


  }
}


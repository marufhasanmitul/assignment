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

  var MyItem=[
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Maruf Hasan"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Jamal"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Kamal"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Rofiq"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Shofiq"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Rasel"},
    {"img":"https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png","title":"Rakib"}
  ];
  
  mySnacbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar=============
      appBar: AppBar(
        title: Text("My First app"),
      ),

      body:
      //ListView
      GridView.builder(
          itemCount: MyItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 1.2
          ),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                mySnacbar(context, MyItem[index]['title']);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height:200,
                child: Image.network(MyItem[index]['img']!,fit: BoxFit.fill,),
              ),
            );
          },

      )

      ,








    );


  }
}
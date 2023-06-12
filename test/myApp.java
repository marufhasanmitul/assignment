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
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {

  List<String> students=[
    'Maruf',
    'Rofiq',
    'shorfiq',
    'Jobbir',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
    'Rayhan',
  ];

  Map<int,String>university={
    1 : 'BUTE',
    2 : 'DU',
    3 : 'NSU',
    4 : 'IUB',
    5 : 'RUET',
    6 : 'Sout',
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is a Flutter App'),
        backgroundColor: Colors.blue,
        elevation: 10,
        centerTitle:true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.home)),
        ],

      ),
      body: Center(
        
        child:
            /*
             ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                children: [
                  ListTile(
                  title: Text(students[index]),
                  //subtitle: Text("This is a Subtitle"),
                  //leading: Text('This is a leading'),
                  //tileColor: Colors.grey,

                  ),
                  Divider(
                    height: 0,
                    color: Colors.black,
                  )
                ],
              );
          },

        ),

             */

            SingleChildScrollView(
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,

          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(students[index]),
                  ),

                ],
              );
          },
          separatorBuilder: (BuildContext context, int index) {
           return Divider(
                height: 0,
                color: Colors.green,
              );
          },

        ),
            )

            /*
            ListView.separated(

          itemCount: university.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(university.values.elementAt(index).toString()),
                  subtitle: Text(university.keys.elementAt(index).toString()),
                ),

              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
           return Divider(
              height: 0,
              color: Colors.green,
            );
          },

        ),
            */

          /*
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Stack(
             children: [
               Container(
                 width: 100,
                 height: 100,
                 color: Colors.green,
                 alignment: Alignment.bottomCenter,
               ),
               Container(
                 width: 50,
                 height: 50,
                 color: Colors.purple,
               ),
               Positioned(
                 bottom: 0,
                 right: 10,
                 top: 10,
                 left: 10,
                 child: Container(
                   width: 20,
                   height: 20,
                   color: Colors.black,
                 ),
               ),
               Positioned.fill(
                   child:
                   Align(
                       alignment: Alignment.bottomCenter,
                       child: Text('Hellow',style: TextStyle(color: Colors.white),)
                   )
               )
             ],
           )







          ],
        )
        */


        ,


      ),

    );


  }
}

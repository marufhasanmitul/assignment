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
//==============================================================================
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        centerTitle: true,
      ),
      body:
      Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 320,
              color:Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Maruf Hasan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 10),
                  Text('Flutter Developer',style: TextStyle(fontSize: 18,color: Colors.amberAccent),),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,color: Colors.amberAccent,),
                      Text('Bangladesh',style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(width: 20),
                      Icon(FontAwesomeIcons.solidHeart,color: Colors.amberAccent,),
                      Text(' 23.3k',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.link,color: Colors.amberAccent,),
                      Text(' marufhasan136@gmail.com',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.white,
                          child: Icon(FontAwesomeIcons.hashtag,size: 35),
                        ),

                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.white,
                          child: FaIcon(FontAwesomeIcons.github),
                        ),

                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.white,
                          child: Icon(FontAwesomeIcons.twitter,size: 35),
                        ),

                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.white,
                          child: Icon(FontAwesomeIcons.linkedin,size: 35),
                        ),

                      ),
                    ],
                  )
                ],
              ),
            ),

           Positioned(
               top: -80,
               child: Container(
                 width: 150,
                 height: 150,
                 //color: Colors.greenAccent,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(100),
                   ),
                 child: CircleAvatar(
                   backgroundImage: NetworkImage('https://maruf136.000webhostapp.com/image/maruf.jpeg'),
                   radius: 220,
                 ),

                 ),
               )


          ],
        ),
      ),
    );
  }
}


import 'dart:ui';
import 'package:flutter/material.dart';
import 'style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
    final double coverHeignt = 280;
    final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                    children:[
                      Container(
                        height: coverHeignt,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://cdn.rabbil.com/photos/images/2022/12/27/flutterX1.png"),
                            fit: BoxFit.cover
                          )
                        ),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2,
                              sigmaY: 2
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              color:Colors.grey.withOpacity(0.5) ,
                            ),
                          ),
                        ),

                      ),
                      Positioned(
                        top: coverHeignt-profileHeight/2,
                        child: Container(
                          height: profileHeight,
                          child: CircleAvatar(
                            radius: profileHeight/2,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage("https://cdn.rabbil.com/photos/images/2022/11/04/rabbilVai.png"),
                          ),
                        ),
                      )
                      ]
                  ),
                  SizedBox(height: profileHeight/2+18),
                  Text("RABBIL HASAN",style: headerTextStyle(),),
                  SizedBox(height: 5),
                  Text("All in One Developer"),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,

                    children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.facebook,size: 35),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.github,size: 35),
                          ),
                        ),
                        SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          child: Icon(FontAwesomeIcons.twitter,size: 35),
                        ),
                      ),
                        SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          child: Icon(FontAwesomeIcons.linkedin,size: 35),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 30,
                    children: [
                      Column(
                        children: [
                          Text("300",style: follingTextStyle()),
                          Text("Projects",style: follingTextStyle(),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("3k",style: follingTextStyle()),
                          Text("Following",style: follingTextStyle()),
                        ],
                      ),
                      Column(
                        children: [
                          Text("100k",style: follingTextStyle()),
                          Text("Followers",style: follingTextStyle()),
                        ],
                      ),
                    ],
                  ),
                  

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin:EdgeInsets.symmetric(horizontal: 55) ,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("About",style: headerTextStyle(),),
                  SizedBox(height: 10,),
                  Text("Learn With Rabbil is a top leading edutech platform for software development. We provide online courses for majors in mobile & web development. Research & development, teaching, and community leading is our vision . Our specialty is industry-oriented teaching processes, guidelines, study plans, and classes with resourceful content. Learn confidently with us software industry needs quality developers.",style: TextStyle(fontSize: 18,wordSpacing: 3),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



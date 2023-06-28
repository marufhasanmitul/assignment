import 'package:assignment/Login.dart';
import 'package:assignment/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up Button',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Welcome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text("SignIn Sign up Button Developed By Maruf Hasan",textAlign:TextAlign.center,style: TextStyle(height: 1.5),)
                    ],
                  ),
              ),
              Expanded(
                  flex: 3,
                  child: Image.asset('images/user_reg.jpg',fit: BoxFit.contain,)

              ),
              Expanded(
                  flex:1 ,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context) => Login()));
                            },
                            child: Text('Login'),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.black54,
                                  width: 2
                                )
                              )
                            ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(

                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                

                              )
                            ) ,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                            },
                            child: Text('Sign Up')
                        ),
                      )
                    ],
                  )
              )


            ],
          ),
        ),
      ),

    );
  }
}

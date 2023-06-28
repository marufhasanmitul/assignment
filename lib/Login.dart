import 'package:assignment/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
            child: Expanded(
              child: Column(
                children: [
                  Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Text("Login Your Account",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: const Text("Login",style: TextStyle(fontSize: 18),)
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Don\'t have an account?"),
                       TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                           },
                           child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold),)
                       ),
                     ],

                   ),
                  Image.asset("images/login.jpeg")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

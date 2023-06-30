import 'package:assignment/Laptop.dart';
import 'package:assignment/Mobile.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AllProduct.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 100,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Jun 8",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
                SizedBox(height: 10),
                Text("Hi,Maruf",style: TextStyle(color: Colors.black,fontSize: 18),),
              ],
            ),
            elevation: 2,
            titleSpacing: 30,
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network("https://maruf136.000webhostapp.com/image/maruf.jpeg"),
              )
            ],
            bottom: ButtonsTabBar(
              onTap: (index){
                DefaultTabController.of(context).index;
              },
             contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              radius: 3,
              unselectedBackgroundColor: Colors.white,
              backgroundColor: Colors.orange,
              elevation: 2,
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Moblie",
                ),
                Tab(
                  text: "Laptop",
                ),
              ],
            ),
          ),
          body: TabBarView(

            children: [
              AllProduct(),
              Mobile(),
              Laptop(),
            ],
          ),

        )

    );
  }
}

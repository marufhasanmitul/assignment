import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Laptop> {

  List<Map<String,String>>productList=[
    {"title":"MacBook Pro","price":"1750","img":"https://i.dummyjson.com/data/products/6/thumbnail.png"},
    {"title":"Samsung Galaxy Book","price":"1499","img":"https://i.dummyjson.com/data/products/7/thumbnail.jpg"},
    {"title":	"Microsoft Surface Laptop 4","price":"1599","img":"https://i.dummyjson.com/data/products/8/thumbnail.jpg"},
    {"title":	"Infinix INBOOK","price":"1099","img":"https://i.dummyjson.com/data/products/9/thumbnail.jpg"},
    {"title":	"HP Pavilion 15-DK1056WM","price":"1099","img":"https://i.dummyjson.com/data/products/10/thumbnail.jpeg"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: productList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2
            ),
            itemBuilder: (context,index){
              return Card(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Expanded(
                      flex: 1,
                      child: Image.network(productList[index]["img"]!,fit: BoxFit.fill,),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex:1 ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(productList[index]["title"]!,overflow: TextOverflow.ellipsis,maxLines: 1,),
                                      Text("\$ "+productList[index]["price"]!)
                                    ],
                                  )
                              ),
                              Expanded(flex :1,child: Icon(CupertinoIcons.shopping_cart))
                            ],
                          ),
                        )
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
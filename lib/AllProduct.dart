import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  State<AllProduct> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AllProduct> {

  List<Map<String,String>>productList=[
    {"title":"iPhone9","price":"549","img":"https://i.dummyjson.com/data/products/1/thumbnail.jpg"},
    {"title":"iPhone X","price":"899","img":"https://i.dummyjson.com/data/products/2/thumbnail.jpg"},
    {"title":"Samsung Universe 9","price":"1249","img":"https://i.dummyjson.com/data/products/3/thumbnail.jpg"},
    {"title":"OPPOF19","price":"280","img":"https://i.dummyjson.com/data/products/4/thumbnail.jpg"},
    {"title":"Huawei P30","price":"499","img":"https://i.dummyjson.com/data/products/5/thumbnail.jpg"},
    {"title":"MacBook Pro","price":"1750","img":"https://i.dummyjson.com/data/products/6/thumbnail.png"},
    {"title":"Samsung Galaxy Book","price":"1499","img":"https://i.dummyjson.com/data/products/7/thumbnail.jpg"},
    {"title":	"Microsoft Surface Laptop 4","price":"1599","img":"https://i.dummyjson.com/data/products/8/thumbnail.jpg"},
    {"title":	"Infinix INBOOK","price":"1099","img":"https://i.dummyjson.com/data/products/9/thumbnail.jpg"},
    {"title":	"HP Pavilion 15-DK1056WM","price":"1099","img":"https://i.dummyjson.com/data/products/10/thumbnail.jpeg"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2
            ),
            itemBuilder: (context,index){
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(productList[index]["img"]!,fit: BoxFit.cover,),
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
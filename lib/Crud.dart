import 'dart:convert';

import 'package:assignment/Product_create_Screen.dart';
import 'package:assignment/Products.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart';


class Crud extends StatefulWidget {
  const Crud({Key? key}) : super(key: key);

  @override
  State<Crud> createState() => _CurdState();
}

class _CurdState extends State<Crud> {
  List<Products> products = [];

  @override
  void initState() {
    super.initState();
    getProduct();
  }

  void getProduct() async {
    Response response =
        await get(Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'));
    final Map<String, dynamic> decodeResponse = jsonDecode(response.body);

    if (response.statusCode == 200 && decodeResponse['status'] == 'success') {
      for (var e in decodeResponse['data']) {
        print(e['ProductName']);

        products.add(Products(
            e['_id'],
            e['ProductName'],
            e['ProductCode'],
            e['Img'],
            e['UnitPrice'],
            e['Qty'],
            e['TotalPrice'],
            e['CreatedDate']));

        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        titlePadding: EdgeInsets.only(left: 16),
                        contentPadding:
                        EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        title: Row(
                          children: [
                            Text("Choose an action"),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close)),
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.edit),
                              title: Text("Edit"),
                            ),
                            Divider(
                              height: 0,
                            ),
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.delete_forever_outlined),
                              title: Text("Delete"),
                            )
                          ],
                        ),
                      );
                    }
                );
              },
              title: Text(products[index].productName),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(products[index].productCode),
                  Text(products[index].totalPrice),
                  Text(products[index].quantity)
                ],
              ),
              leading: Image.network(
                products[index].img,
                width: 50,
                errorBuilder: (_, __, ___) {
                  return const Icon(Icons.image, size: 32);
                },
              ),
              trailing: Text(
                products[index].unitPrice,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductCreateScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

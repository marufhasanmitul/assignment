import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {

  final TextEditingController _nameTeController=TextEditingController();
  final TextEditingController _codeTeController=TextEditingController();
  final TextEditingController _priceTeController=TextEditingController();
  final TextEditingController _quantityTeController=TextEditingController();
  final TextEditingController _totalPriceController=TextEditingController();
  final TextEditingController _imageTeController=TextEditingController();

  GlobalKey<FormState> _formState=GlobalKey<FormState>();

  void addProduct()async{
    Response response=await post(
        Uri.parse(
            'https://crud.teamrabbil.com/api/v1/CreateProduct'),
        body: jsonEncode({
          "Img":_imageTeController.text.trim(),
          "ProductCode": _codeTeController.text.trim(),
          "ProductName":_nameTeController.text.trim(),
          "Qty": _quantityTeController.text.trim(),
          "TotalPrice":_totalPriceController.text.trim(),
          "UnitPrice": _priceTeController.text.trim(),
        },),
        headers:{
          'content-type':'application/json'
        });

    print(response);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Create Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formState,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameTeController,
                  decoration: const InputDecoration(hintText: 'Product Name'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Product Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _codeTeController,
                  decoration: const InputDecoration(hintText: 'Product Code'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Product Code';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _priceTeController,
                  decoration: const InputDecoration(hintText: 'Price'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Price';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _quantityTeController,
                  decoration: const InputDecoration(hintText: 'Quantity'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Product Quentity';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _totalPriceController,
                  decoration: const InputDecoration(hintText: 'Total Price'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Product Total Price';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _imageTeController,
                  decoration: const InputDecoration(hintText: 'Images'),
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return 'Enter Your Product Image';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        if(_formState.currentState!.validate()){
                          addProduct();
                        }
                      },
                      child: const Text("Add")
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

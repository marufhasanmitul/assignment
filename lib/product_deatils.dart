import 'package:flutter/material.dart';

class UserDeatails extends StatefulWidget {
  const UserDeatails({Key? key}) : super(key: key);

  @override
  State<UserDeatails> createState() => _UserDeatailsState();
}

class _UserDeatailsState extends State<UserDeatails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product Deatails'),
          ],
        ),
      ),
    );
  }
}

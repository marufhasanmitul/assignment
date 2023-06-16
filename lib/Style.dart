import 'package:flutter/material.dart';

InputDecoration applyStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(),
    labelText: label
  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold
  );
}

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(12),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      )
  );
}
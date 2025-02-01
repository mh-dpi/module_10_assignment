import 'package:flutter/material.dart';

InputDecoration inputDecoration({
  required String fieldName,
}) =>
    InputDecoration(
      labelText: fieldName,
      labelStyle: TextStyle(color: Colors.blueGrey),
      hintText: 'Enter Your $fieldName Here...',
      hintStyle: TextStyle(color: Colors.grey[400]),
      filled: true,
      fillColor: Colors.blue.shade50,
      contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey, width: 2.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blueGrey,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0), // Rounded corners
  ),
);
TextStyle elevatedButtonTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

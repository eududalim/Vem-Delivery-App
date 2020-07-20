import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

InputDecoration inputDecoration(String labelText, IconData iconData) {
    return InputDecoration(
        focusColor: Colors.black,
        icon: Icon(
          iconData,
          color: Colors.black87,
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black87),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)));
  }
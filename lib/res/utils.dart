import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils{
   static showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
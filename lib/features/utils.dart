import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Function showSnackBarFactory(BuildContext context) {
  void showSnacBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: Duration(seconds: 3)),
    );
  }

  return showSnacBar;
}

var logger = Logger();

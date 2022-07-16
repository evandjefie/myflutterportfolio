import "package:flutter/material.dart";
import "package:myflutterportfolio/presentation/home.dart";

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
    },
  ));
}

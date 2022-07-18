import "package:flutter/material.dart";
import "package:myflutterportfolio/presentation/home.dart";
import 'package:myflutterportfolio/presentation/projects.dart';
import 'package:myflutterportfolio/presentation/about.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'about',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      // 'projects': (context) => MyProjects(),
    },
  ));
}

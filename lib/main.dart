import "package:flutter/material.dart";
import "package:myflutterportfolio/presentation/home.dart";
import 'package:myflutterportfolio/presentation/projects.dart';
import 'package:myflutterportfolio/presentation/about.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'projects': (context) => MyProjects(),
    },
  ));
}

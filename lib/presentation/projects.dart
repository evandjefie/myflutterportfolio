import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff252525),
          title: Text(
            "Projects",
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                color: Color(0xff2330),
              ),
            )
          ])),
        ));
  }
}

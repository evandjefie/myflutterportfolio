import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  // projects cards class
  myPro(lang, title, description, note) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Colors.black,
        child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                Text(
                  lang,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 18,
                    ),
                    Text(
                      note,
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(FontAwesomeIcons.github, color: Colors.white))
                  ],
                )
              ],
            )),
      ),
    );
  }

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
          // Scroller widget
          child: Container(
              alignment: Alignment.center,
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                    myPro(
                        "UNITY", "MANSA VILLAGE CASINO", "An unity game", "10"),
                  ])),
        ));
  }
}

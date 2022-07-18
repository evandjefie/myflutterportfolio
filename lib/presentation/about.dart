import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("About Me"),
        ),
        body: Container(
            color: Colors.black,
            child: Stack(children: [
              // Image
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 60),
                child: ShaderMask(
                  // Pour effet gradient
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: new Image.asset(
                    "../../assets/images/profil.png",
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Informations
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55),
                child: Column(
                  children: [
                    Text(
                      "Salut, Je suis",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Evan DJEFIE",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "DevOps Junior | Ux/Ui Design ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 200,
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Contactez-moi"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black),
                        )),

                    SizedBox(
                      height: 40,
                    ),
                    // Contacts
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.linkedin,
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.github,
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.facebook,
                                color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}

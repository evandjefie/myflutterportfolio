import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_sheet/sliding_sheet.dart'; // nav at bottom

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // Component
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  myTools(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Evan DJEFIE'),
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "projects");
                },
                child: Text(
                  "Projects",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "about");
                },
                child: Text(
                  "About Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 2,
            ),
          ],
        ),
      ),
      body: SlidingSheet(
        backdropColor: Colors.white,
        elevation: 8,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.lightBlueAccent,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 200,
                          height: 200,
                          color: Colors.blueGrey,
                          margin: EdgeInsets.only(top: 50),
                          child:
                              // Image.asset("../../assets/profil.png"),
                              Text("Photo de Profil")),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Evan DJEFIE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "DevOps Junior | Unity Game Developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev("07", "projects"),
                    myAchiev("07", "projects"),
                    myAchiev("07", "projects"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Outils Maitrisés",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myTools(Icons.android, "Android"),
                        myTools(Icons.android, "Aws"),
                        myTools(Icons.android, "Aws")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myTools(Icons.android, "Android"),
                        myTools(Icons.android, "Aws"),
                        myTools(Icons.android, "Aws")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myTools(Icons.android, "Android"),
                        myTools(Icons.android, "Aws"),
                        myTools(Icons.android, "Aws")
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

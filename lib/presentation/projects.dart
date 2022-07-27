import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

// Include navbar to select category of project DONE
//  Include search bar to find specific project

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  // pagecontroller
  final _controller = PageController();

  // projects cards class
  myPro(lang, title, description, note) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Card(
        color: Colors.black,
        child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                Text(
                  lang,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                  height: 10,
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

  // catPro(cat) {
  //   return Column(
  //     children: [
  //       Text(
  //         cat,
  //         style: TextStyle(
  //             color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
  //       ),
  //       Container(
  //         height: MediaQuery.of(context).size.height * 0.2,
  //         margin: EdgeInsets.only(left: 10, right: 10, top: 10),
  //         child: PageView(
  //           scrollDirection: Axis.horizontal,
  //           controller: _controller,
  //           children: [
  //             myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app", "10"),
  //             myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app", "10"),
  //             myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app", "10"),
  //           ],
  //         ),
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       SmoothPageIndicator(
  //         controller: _controller,
  //         count: 3,
  //         effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              children: [
                Text(
                  "DevOps",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app",
                          "10"),
                      myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app",
                          "10"),
                      myPro("FLUTTER", "MyPortfolio", "An Flutter mobile app",
                          "10"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:
                      ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
                ),
              ],
              // catPro("DevOps"),
              // SizedBox(height: 15),
              // catPro("Unity"),
              // SizedBox(height: 15),
              // catPro("Ux / Ux"),
            )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.black,
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.developer_mode,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ]),
    );
  }
}

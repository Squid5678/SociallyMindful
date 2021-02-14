import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color.fromARGB(255, 109, 236, 185),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(210, 251, 116, 62),
          title: Text("Home"),
        ),
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 100),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://www.studyfinds.org/wp-content/uploads/2019/10/AdobeStock_269052879-816x520.jpeg",
                        height: 135.0 * 1.5,
                        width: 220.0 * 1.5,
                        fit: BoxFit.fill,
                      ),
                    ))),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/eventsPage");
              },
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://cdn.hinative.com/attached_images/505525/aafc2d19ed877e0759c6fe41c1d832b0e12e5a5e/large.JPG?1568637572",
                      height: 135.0 * 1.5,
                      width: 220.0 * 1.5,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 340, top: 200),
              child: FlatButton(
                onPressed: () {
                  // Add your onPressed code here!
                  Navigator.pushNamed(context, "/friendsPage");
                },
                child: Icon(Icons.contacts),
              ),
            )
          ],
        ));
  }
}

class CrossAxisAligment {}

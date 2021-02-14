import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color.fromARGB(255, 109, 236, 185),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(210, 251, 116, 62),
          title: Text("Trenton Thunder Baseball Game"),
        ),
        body: Column(children: [
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "http://bronxpinstripes.com/wp-content/uploads/2019/07/TrentonThunderPark.jpg",
                  height: 135.0 * 1.5,
                  width: 220.0 * 1.5,
                  fit: BoxFit.fill,
                ),
              )),
          Text(
            "Local League Baseball Game\n",
            style: TextStyle(fontSize: 40),
          ),
          Text(
            "Join us for some good old local baseball! It doesn't get any better than this!\n",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Timings: 4:30 - 6:30 at Arm and Hammer Stadium on Sunday Feb 21 2021",
            style: TextStyle(fontSize: 20),
          ),
        ]));
  }
}

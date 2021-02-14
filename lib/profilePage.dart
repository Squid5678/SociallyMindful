import "package:flutter/material.dart";

import 'Person.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfilePageState();
  }
}

//refer to the tinder page as a good reference. Basically, big image at the top,
// name on the left, age below, then we can also have the location (ie. Within the '08536' area)
//then you can add the interests based on whatever code Milan has worked on

class ProfilePageState extends State<ProfilePage> {
  //Runs when the no button is clicked
  void no() {
    setState(() {
      currentPersonSelected++;
    });
  }

  //Runs when the yes button is clicked
  void yes() {
    setState(() {
      //Add person to be an accepted person and then scroll to the next person
      Person.acceptedMatches
          .add(Person.matches.elementAt(currentPersonSelected));
      currentPersonSelected++;
    });
  }

//index of the person selected from the matched list
  int currentPersonSelected = 0;

//one sec
  @override
  Widget build(BuildContext context) {
    TextStyle displayAttributeStyle = new TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontFamily: "SanFran",
    );

    TextStyle buttonTextStyle = new TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      fontFamily: "SanFran",
    );
    return Scaffold(
      backgroundColor: new Color.fromARGB(255, 109, 236, 185),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 251, 116, 62),
        title: Text("Profiles"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: new NetworkImage(
                "https://www.downloadclipart.net/medium/35387-person-icon-blue-no-tie-images.png"),
          ),

          Text(
            "Name: " + Person.matches.elementAt(currentPersonSelected).name,
            style: displayAttributeStyle,
            textAlign: TextAlign.left,
          ),
          Text(
            "Age: " +
                Person.matches.elementAt(currentPersonSelected).age.toString(),
            style: displayAttributeStyle,
          ),
          Text(
            "Email: " + Person.matches.elementAt(currentPersonSelected).email,
            style: displayAttributeStyle,
          ),
          Text(
            "Location: 0" +
                Person.matches
                    .elementAt(currentPersonSelected)
                    .zipCode
                    .toString(),
            style: displayAttributeStyle,
          ),
          Text(
            Person.matches.elementAt(currentPersonSelected).getInterests(),
            style: displayAttributeStyle,
          ),

          //any chances to format the interests as a list?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 30),
                child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: no,
                    child: Text(
                      "No ",
                      style: buttonTextStyle,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, right: 30),
                child: RaisedButton(
                    color: Colors.green,
                    onPressed: yes,
                    child: Text(
                      "Yes",
                      style: buttonTextStyle,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

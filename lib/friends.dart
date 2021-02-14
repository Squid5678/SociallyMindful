import "package:flutter/material.dart";
import "./Person.dart";

class FriendsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FriendsPageState();
  }
}

class FriendsPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color.fromARGB(255, 109, 236, 185),
      appBar: AppBar(
        title: Text(
          "Your Friends",
        ),
        backgroundColor: new Color.fromARGB(210, 251, 116, 62),
      ),
      body: ListView.builder(
        itemCount: Person.acceptedMatches.length,
        itemBuilder: (context, index) {
          return Container(
            child: Text(
              'Name: ${Person.acceptedMatches[index].name}\nEmail: ${Person.acceptedMatches[index].email}\nDiscord Tag: ${Person.acceptedMatches[index].discordTag}',
              style: TextStyle(fontSize: 20, fontFamily: "SanFran"),
            ),
          );
        },
      ),
    );
  }
}

import "package:flutter/material.dart";

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color.fromARGB(255, 109, 236, 185),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(210, 251, 116, 62),
          title: Text("Profiles"),
        ));
  }
}

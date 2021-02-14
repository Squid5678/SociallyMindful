import 'dart:io';
import 'package:image_picker/image_picker.dart';
import "package:flutter/material.dart";

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RegistrationPageState();
  }
}

class RegistrationPageState extends State {
  bool sportsCheckboxState = false;

  File _image;
  Widget build(BuildContext context) {
    TextStyle checkBoxTitleStyle = new TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: "SanFran",
    );

    return Scaffold(
      backgroundColor: new Color.fromARGB(255, 109, 236, 185),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 251, 116, 62),
        title: Text("Register"),
      ),
      body: new Column(
        children: [
          InkWell(
              onTap: () {
                print("CAMERA SfTUFF");
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://cdn3.iconfinder.com/data/icons/linecons-free-vector-icons-pack/32/camera-512.png",
                      height: 140.0 * 1.5,
                      width: 220.0 * 1.5,
                      fit: BoxFit.fill,
                    ),
                  ))),
          Text(
            "Select your Interests",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: "SanFran",
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (sportsCheckboxState == true) {
                  sportsCheckboxState = false;
                } else {
                  sportsCheckboxState = true;
                }
              });
            },
            value: sportsCheckboxState,
            title: Text(
              "test",
              style: checkBoxTitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}

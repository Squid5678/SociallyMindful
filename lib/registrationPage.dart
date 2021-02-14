import 'dart:io';
import 'package:image_picker/image_picker.dart';
import "package:flutter/material.dart";
import './Person.dart';

//https://pub.dev/packages/image_picker
class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RegistrationPageState();
  }
}

class RegistrationPageState extends State {
  File _image = File("assets/cam.png");
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  bool sportsCheckboxState = false;
  bool gamingCheckboxState = false;
  bool meditationCheckboxState = false;
  bool programmingCheckboxState = false;
  bool readingCheckboxState = false;
  bool musicCheckboxState = false;

  void submitInfo() {
    Person.userInterests[0] = sportsCheckboxState;
    Person.userInterests[1] = gamingCheckboxState;
    Person.userInterests[2] = meditationCheckboxState;
    Person.userInterests[3] = programmingCheckboxState;
    Person.userInterests[4] = readingCheckboxState;
    Person.userInterests[5] = musicCheckboxState;
    Person.userImage = _image;
    Navigator.pushNamed(context, "/registration2");
  }

  Widget build(BuildContext context) {
    TextStyle checkBoxTitleStyle = new TextStyle(
      fontSize: 15,
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
              onTap: null,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(_image),
                  ))),
          ElevatedButton(onPressed: getImage, child: Text("Add Picture")),
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
              "Sports",
              style: checkBoxTitleStyle,
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (gamingCheckboxState == true) {
                  gamingCheckboxState = false;
                } else {
                  gamingCheckboxState = true;
                }
              });
            },
            value: gamingCheckboxState,
            title: Text(
              "Gaming",
              style: checkBoxTitleStyle,
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (meditationCheckboxState == true) {
                  meditationCheckboxState = false;
                } else {
                  meditationCheckboxState = true;
                }
              });
            },
            value: meditationCheckboxState,
            title: Text(
              "Meditation",
              style: checkBoxTitleStyle,
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (programmingCheckboxState == true) {
                  programmingCheckboxState = false;
                } else {
                  programmingCheckboxState = true;
                }
              });
            },
            value: programmingCheckboxState,
            title: Text(
              "Programming",
              style: checkBoxTitleStyle,
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (readingCheckboxState == true) {
                  readingCheckboxState = false;
                } else {
                  readingCheckboxState = true;
                }
              });
            },
            value: readingCheckboxState,
            title: Text(
              "Reading",
              style: checkBoxTitleStyle,
            ),
          ),
          CheckboxListTile(
            onChanged: (value) {
              setState(() {
                if (musicCheckboxState == true) {
                  musicCheckboxState = false;
                } else {
                  musicCheckboxState = true;
                }
              });
            },
            value: musicCheckboxState,
            title: Text(
              "Music",
              style: checkBoxTitleStyle,
            ),
          ),
          ElevatedButton(
            onPressed: submitInfo,
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}

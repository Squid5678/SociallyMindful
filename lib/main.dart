import 'package:camera/camera.dart';
import "package:flutter/material.dart";
import "./loginPage.dart";
import "./homePage.dart";
import "./profilePage.dart";
import "./registrationPage.dart";
import 'package:camera/camera.dart';

void main() {
  runApp(new MaterialApp(
    initialRoute: "/login",
    routes: {
      "/login": (context) => new LoginPage(),
      "/home": (context) => new HomePage(),
      "/profile": (context) => new ProfilePage(),
      "/registration": (context) => new RegistrationPage(),
    },
  ));
}

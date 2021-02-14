import 'package:camera/camera.dart';
import "package:flutter/material.dart";
import "./loginPage.dart";
import "./homePage.dart";
import "./profilePage.dart";
import "./registrationPage.dart";
import 'RegistrationPage2.dart';
import 'event.dart';
import 'eventsPage.dart';
import 'friends.dart';

void main() {
  runApp(new MaterialApp(
    initialRoute: "/login",
    routes: {
      "/login": (context) => new LoginPage(),
      "/home": (context) => new HomePage(),
      "/profile": (context) => new ProfilePage(),
      "/registration": (context) => new RegistrationPage(),
      "/registration2": (context) => new RegistrationPage2(),
      "/eventsPage": (context) => new EventsPage(),
      "/friendsPage": (context) => new FriendsPage(),
      "/event": (context) => new EventPage(),
    },
  ));
}

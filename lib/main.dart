import "package:flutter/material.dart";
import "./loginPage.dart";

void main() {
  runApp(new MaterialApp(
    initialRoute: "/login",
    routes: {"/login": (context) => new LoginPage()},
  ));
}

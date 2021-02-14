import 'package:flutter/material.dart';
import 'package:Socially_Mindful/authenticate.dart';
import 'package:Socially_Mindful/homePage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //return either home or authenticate widget
    return Authenticate();
  }
}
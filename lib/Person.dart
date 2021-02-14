import 'dart:math';
import "dart:io";

class Person {
  String name;
  int age;

  var interests = [false, false, false, false, false, false];
  var botName;
  var email; //used for login authentication
  var password; //used for login authentication
  var botAge;
  int zipCode;
  File image;

  static var userInterests = [false, false, false, false, false, false];
  static var userName;
  static var userEmail; //used for login authentication
  static var userPassword; //used for login authentication
  static var userAge;
  static var userDiscordTag;
  static int userZipCode;
  static File userImage;

//Store bots on this
  static var matches = List();

  static int numGen() {
    int num;
    final random = new Random();
    num = random.nextInt(6);
    return num;
  }

  void getLoc() {
    int num;
    final random = new Random();
    num = random.nextInt((3000) + 6000);
    this.zipCode = num;
  }

  String getInterests() {
    String output = "My Interests are: ";

    if (interests.elementAt(0) == true) {
      output += "Sports, ";
    }
    if (interests.elementAt(1) == true) {
      output += "Gaming, ";
    }
    if (interests.elementAt(2) == true) {
      output += "Meditation, ";
    }
    if (interests.elementAt(3) == true) {
      output += "Programming, ";
    }
    if (interests.elementAt(4) == true) {
      output += "Reading, ";
    }
    if (interests.elementAt(5) == true) {
      output += "Music. ";
    }

    return output;
  }
}

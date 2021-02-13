import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Socially Mindful"),
      ),
      body:
          new Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        new Container(
            child: new Text("Enter Details Below:",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                )),
            margin: EdgeInsets.only(top: 30)),
        new Container(
          margin: EdgeInsets.only(
            right: 40,
            left: 40,
            top: 30,
          ),
          child: new TextField(
            decoration: new InputDecoration(hintText: "Email Address"),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(
            right: 40,
            left: 40,
            top: 30,
          ),
          child: new TextField(
            obscureText: true,
            decoration: new InputDecoration(hintText: "Password"),
          ),
        ),
        new RaisedButton(
          child: Text("Login"),
          onPressed: null,
        ),
        new RaisedButton(
          child: Text("Need an account? Click here to start!"),
          onPressed: null,
        ),
      ]),
    );
  }
}

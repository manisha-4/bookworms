import 'package:BookWorms/screens/login/local%20widget/loginform.dart';
import 'package:flutter/material.dart';

class OurLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Image.asset("assets/logo.png"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  OurLoginForm(),
                ],
              )),
        ),
      ]),
    );
  }
}

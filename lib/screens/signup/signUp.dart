
import 'package:flutter/material.dart';

import 'local widget/signupform.dart';




class OurSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    
                    BackButton()], ),
                SizedBox(height:40.0),
                OurSignUpForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




















/*class OurLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      BackButton(),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  OurSignUpForm(),
                ],
              )),
        ),
      ]),
    );
  }
}
*/
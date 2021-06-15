import 'package:BookWorms/screens/signup/local%20widget/signupform.dart';
import 'package:flutter/material.dart';
import 'package:BookWorms/widget/ourContainer.dart';



class OurLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Log In",
              style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.alternate_email),
              hintText: "Enter Your Email",
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.login_outlined),
              hintText: "PassWord",
            ),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0),
              ),
            ),

            onPressed: (){

              // have to something later
            },
          ),
          FlatButton(
            child:Text(
                 "Don't have an account?Sign up here"
            ),
            materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
            onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OurSignUpForm(),
              ),
              );
            } ,
            )
        ],
      ),
    );
  }
}

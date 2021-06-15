

import 'package:BookWorms/screens/login/local%20widget/loginform.dart';
import 'package:BookWorms/screens/login/login.dart';
import 'package:BookWorms/states/currenUser.dart';
import 'package:flutter/material.dart';
import 'package:BookWorms/widget/ourContainer.dart';
import 'package:provider/provider.dart';





class OurSignUpForm extends StatefulWidget {
  @override
  _OurSignUpFormState createState() => _OurSignUpFormState();
}

class _OurSignUpFormState extends State<OurSignUpForm> {
  TextEditingController _emailController=TextEditingController();
  TextEditingController _fullNameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _confirmPasswordController=TextEditingController();


  void _signupUser(String email, String password, BuildContext context) async {
    CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);

    try {
      if (await _currentUser.signupUser(email, password)) {
        debugPrint("hello");
        Navigator.pop(context);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OurContainer(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 40, 40, 10),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical:10.0),
              child: TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outlined),
                  hintText: "Full Name",
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
            padding: EdgeInsets.symmetric(vertical:10.0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: "Enter Your Email",
                ),
              ),
            ),
            SizedBox(height: 10.0),
            
              Padding(
                 padding: EdgeInsets.symmetric(vertical:10.0),
               child: TextFormField(
                 controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.login_outlined),
                  hintText: "PassWord",
                ),
            ),
             ),
            SizedBox(height: 10.0),
             Padding(
               padding: EdgeInsets.symmetric(vertical:10.0),
               child: TextFormField(
                 controller: _confirmPasswordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open),
                  hintText: "Confirm PassWord",
                ),
            ),
             ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:10.0),
              child: ButtonTheme(
                minWidth:300.0,
                height:50,
                
               
                child: RaisedButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),

                  onPressed: (){
                _if(_passwordController.text== _confirmPasswordController.text) {
                  _signupUser(
                      _emailController.text, _passwordController.text, context);
                } 
                else {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Check your password again."),
                    ),
                  );
                    // have to something later
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0),
             FlatButton(
            child:Text(
                 "Already have an account?Sign In here"
            ),
            materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
            onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OurLoginForm(),
              ),
              );
            } ,
            ),
             SizedBox(
            height: 30.0,
          ),
             Text("Already have an account?"),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => OurLogin()),
              );
            },
            child: Text("Sign in here"),
          ),
           
          ],
        ),
      ),
    );
  }
}

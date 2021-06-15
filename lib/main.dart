import 'package:BookWorms/states/currenUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:/home/manisha/Desktop/vs_app/BookWorms/lib/screens/login/login.dart';
import 'package:BookWorms/screens/login/login.dart';
import 'package:BookWorms/utilis/OurTheme.dart';
import 'package:provider/provider.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: OurTheme().builTheme(),
        home: OurLogin(),
      ),
    );
  }
}

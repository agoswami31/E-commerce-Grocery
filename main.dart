import 'package:app1/HomePage.dart';
import 'package:app1/LoginPage.dart';
//import 'package:app1/signin.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        home: LoginPage() ,
      theme: ThemeData(
        fontFamily: "poppins",
        scaffoldBackgroundColor: Colors.white,
      ),

    );
  }
}



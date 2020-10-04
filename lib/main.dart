import 'package:first_app/pages/Homepage.dart';
import 'package:first_app/pages/Loginpage.dart';
import 'package:first_app/uitls/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    title: "My first app",
    home: Constants.prefs.getBool("LoggedIn")==true? HomePage(): LoginPage() ,
    theme: ThemeData(primarySwatch: Colors.amber),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}

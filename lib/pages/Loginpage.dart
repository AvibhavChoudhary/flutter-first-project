import 'package:first_app/image.dart';
import 'package:first_app/main.dart';
import 'package:first_app/uitls/Constants.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Name",
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  border: OutlineInputBorder()),
                            )
                          ],
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          Constants.prefs.setBool("LoggedIn", true);
                          Navigator.pushReplacementNamed(context, "/home");
                        },
                        child: Text("Sign In"),
                        color: Colors.amber,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

//  Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             color: Colors.grey[50],
//               child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Form(child: Column(
//                       children: [
//                         TextFormField(decoration: InputDecoration(
//                           hintText: "Enter Username",
//                           labelText: "Name",
//                           border: OutlineInputBorder()
//                         ),),
//                         SizedBox(height: 20,),
//                          TextFormField(obscureText: true,decoration: InputDecoration(
//                           hintText: "Enter Password",
//                           labelText: "Password",
//                           border: OutlineInputBorder()
//                         ),)
//                       ],
//                     )),

//                   ),
//                   SizedBox(height: 20,),
//                   RaisedButton(onPressed: (){},
//                   child: Text("Sign In"),
//                   color: Colors.amber,)
//                 ],
//               ),
//             ),
//           ),
//         )

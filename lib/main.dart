import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My first app",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        drawer: Drawer(
          child: Text("This is drawer"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// class DemoBox extends StatelessWidget {
//   const DemoBox({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey[500], blurRadius: 10, offset: Offset(6, 10))
//           ],
//           borderRadius: BorderRadius.circular(25),
//           gradient:
//               LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent])),
//       child: Text(
//         "This is Fultter demo",
//         style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w800,
//             fontSize: 15,
//             fontStyle: FontStyle.italic),
//       ),
//     );
//   }
// }

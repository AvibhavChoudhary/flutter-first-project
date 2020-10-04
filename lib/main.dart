import 'package:flutter/material.dart';

import 'pages/Homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "My first app",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.amber),
  ));
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

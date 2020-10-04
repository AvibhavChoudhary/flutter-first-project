import 'package:flutter/material.dart';


class Change_name extends StatelessWidget {
  const Change_name({
    Key key,
    @required this.myText,
    @required TextEditingController controller,
  }) : _controller = controller, super(key: key);

  final String myText;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assests/bg1.jpg",
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Enter something here",
                labelText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        )
      ],
    );
  }
}
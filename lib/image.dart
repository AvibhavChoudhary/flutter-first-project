import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assests/bg1.jpg",
      fit: BoxFit.contain,
    );
  }
}

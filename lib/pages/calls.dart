import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Calls Tab",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Verdana",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

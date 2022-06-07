import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Status Tab",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Verdana",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

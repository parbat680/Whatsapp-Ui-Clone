import 'package:flutter/material.dart';
import './main_screen.dart';

void main() => runApp(const Whatsapp());

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/second': (context) => const SecondRoute(),
      },
    );
  }
}

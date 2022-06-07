import 'package:flutter/material.dart';
import './pages/calls.dart';
import './pages/camera.dart';
import './pages/chat.dart';
import './pages/status.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: const Color.fromRGBO(27, 161, 102, 1),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(text: "Calls"),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 10)),
          Icon(Icons.more_vert_rounded),
          Padding(padding: EdgeInsets.only(right: 10)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(27, 161, 102, 1),
        child: const Icon(Icons.message),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GFG Second Route"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

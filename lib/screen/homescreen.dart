import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF464646),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF000000),
          title: Text(
            "HEADLINES",
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 29,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.bold),
          )),
    );
  }
}

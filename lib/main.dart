import 'package:flutter/material.dart';
import 'package:newstoday/screen/Detailednews.dart';
import 'package:newstoday/screen/homescreen.dart';
void main()
{
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

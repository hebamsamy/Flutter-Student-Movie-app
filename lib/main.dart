import 'package:flutter/material.dart';
import 'package:testapp/screens/ListScreen.dart';
import 'package:testapp/screens/TabScreen.dart';
import 'package:testapp/screens/bottomTabScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomTabScreen());
  }
}

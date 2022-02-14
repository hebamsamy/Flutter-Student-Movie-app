import 'package:flutter/material.dart';
import 'package:testapp/screens/ListScreen.dart';
import 'package:testapp/screens/homeScreen.dart';
import 'package:testapp/screens/searchScreen.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({Key? key}) : super(key: key);

  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int currentIndex = 0;
  List<String> listTitle = ["Home", "movie list", "Search"];
  List<Widget> listScreen = [HomeScreen(), ListScreen(), SearchScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listTitle[currentIndex]),
      ),
      body: listScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int val) {
          setState(() {
            currentIndex = val;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blue[500],
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
        ],
      ),
    );
  }
}

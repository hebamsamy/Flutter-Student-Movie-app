import 'package:flutter/material.dart';
import 'package:testapp/screens/ListScreen.dart';
import 'package:testapp/screens/homeScreen.dart';
import 'package:testapp/screens/searchScreen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MovieSS app"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.movie),
                text: "Movie List",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
            ],
          ),
        ),
        body:
            TabBarView(children: [HomeScreen(), ListScreen(), SearchScreen()]),
      ),
    );
  }
}

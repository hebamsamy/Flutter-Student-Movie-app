import 'package:flutter/material.dart';
import 'package:testapp/MovieModel.dart';
import 'package:testapp/componants/MovieCard.dart';
import 'package:testapp/network.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = "";
  List<Movie> movieList = [];
  getFromApi() async {
    NetworkHelper helper = NetworkHelper();
    var data = await helper.getMoviesBySearch(searchText);
    setState(() {
      movieList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: TextField(
            onChanged: (String val) {
              setState(() {
                searchText = val;
                getFromApi();
              });
            },
            style: TextStyle(fontSize: 30, color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                size: 40,
              ),
              contentPadding: EdgeInsets.all(20),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: movieList.length,
              itemBuilder: (context, ind) => MovieCard(
                    movie: movieList[ind],
                  )),
        )
      ],
    );
  }
}

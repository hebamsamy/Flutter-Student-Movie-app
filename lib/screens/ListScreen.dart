import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:testapp/MovieModel.dart';
import 'package:testapp/componants/MovieCard.dart';
import 'package:testapp/network.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Movie> movieList = [];
  @override
  void initState() {
    super.initState();
    callApi();
  }

  callApi() async {
    NetworkHelper helper = NetworkHelper();
    List<Movie> retutnedList = await helper.getPopularMovies();
    setState(() {
      movieList = retutnedList;
    });
    print(retutnedList.last.title);
  }

  @override
  Widget build(BuildContext context) {
    if (movieList.isEmpty) {
      return SpinKitDoubleBounce(
        color: Colors.white,
        size: 200,
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) => MovieCard(movie: movieList[index]),
        itemCount: movieList.length,
      );
    }
  }
}

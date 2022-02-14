import 'package:flutter/material.dart';
import 'package:testapp/MovieModel.dart';

class MovieCard extends StatelessWidget {
  MovieCard({required this.movie});
  Movie movie;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        ListTile(
          title: Text(movie.title),
          subtitle: Text(movie.overview),
        ),
        Image.network(movie.poster_path)
      ]),
    );
  }
}

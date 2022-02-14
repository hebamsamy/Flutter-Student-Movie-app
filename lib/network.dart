import 'dart:convert';

import 'package:http/http.dart';
import 'package:testapp/MovieModel.dart';

class NetworkHelper {
  Future<List<Movie>> getMoviesBySearch(String searchText) async {
    //eb03df251074313f6e24c705f23a1cdc
    //https://api.themoviedb.org/3/search/movie?api_key={api_key}&query={MovieName}
    List<Movie> retutnedList = [];
    Uri url = Uri.https("api.themoviedb.org", "/3/search/movie",
        {"api_key": "eb03df251074313f6e24c705f23a1cdc", "query": searchText});
    Response data = await get(url);
    if (data.statusCode == 200) {
      var converted = jsonDecode(data.body);
      var temp = converted["results"] as List;
      retutnedList = temp
          .map((elem) => Movie(
              id: elem['id'],
              title: elem['title'],
              overview: elem['overview'],
              poster_path: elem['poster_path']))
          .toList();
    } else {
      print("Error");
    }
    return retutnedList;
  }

  Future<List<Movie>> getPopularMovies() async {
    //eb03df251074313f6e24c705f23a1cdc
    //https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
    List<Movie> retutnedList = [];
    Uri url = Uri.https("api.themoviedb.org", "/3/movie/popular", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    Response data = await get(url);
    if (data.statusCode == 200) {
      var converted = jsonDecode(data.body);
      var temp = converted["results"] as List;
      retutnedList = temp
          .map((elem) => Movie(
              id: elem['id'],
              title: elem['title'],
              overview: elem['overview'],
              poster_path: elem['poster_path']))
          .toList();
    } else {
      print("Error");
    }
    return retutnedList;
  }
}

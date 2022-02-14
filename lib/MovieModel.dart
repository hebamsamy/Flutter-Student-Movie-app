class Movie {
  String title;
  String overview;
  int id;
  String poster_path;
  Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.poster_path}) {
    this.poster_path = "https://image.tmdb.org/t/p/w500/" + this.poster_path;
  }
}

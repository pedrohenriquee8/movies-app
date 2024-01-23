import 'package:movies_app/core/domain/models/movies/movie_details.dart';
import 'package:movies_app/core/domain/models/movies/movie_response.dart';

abstract class MovieAdapter {
  Future<MovieResponse> fetchPopularMovies();
  Future<MovieResponse> fetchTopRatedMovies();
  Future<MovieResponse> fetchNowPlayingMovies();
  Future<MovieDetails> fetchMovieDetails(int movieId);
}

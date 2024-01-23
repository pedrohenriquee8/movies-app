import 'package:movies_app/core/domain/models/movies/movie_details.dart';
import 'package:movies_app/core/domain/models/movies/movie_response.dart';
import 'package:movies_app/ui/dicontainer/index.dart';

Future<MovieResponse> useFetchPopularMovies() {
  return DIContainer.getMovieUseCase().fetchPopularMovies();
}

Future<MovieResponse> useFetchTopRatedMovies() {
  return DIContainer.getMovieUseCase().fetchTopRatedMovies();
}

Future<MovieResponse> useFetchNowPlayingMovies() {
  return DIContainer.getMovieUseCase().fetchNowPlayingMovies();
}

Future<MovieDetails> useFetchMovieDetails(int movieId) {
  return DIContainer.getMovieUseCase().fetchMovieDetails(movieId);
}

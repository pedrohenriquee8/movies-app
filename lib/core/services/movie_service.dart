import 'package:movies_app/core/domain/models/movies/movie_details.dart';
import 'package:movies_app/core/domain/models/movies/movie_response.dart';
import 'package:movies_app/core/interfaces/adapter/movie_adapter.dart';
import 'package:movies_app/core/interfaces/usecases/movie_usecase.dart';

class MovieService implements MovieUseCase {
  final MovieAdapter _adapter;

  MovieService(this._adapter);

  @override
  Future<MovieDetails> fetchMovieDetails(int movieId) {
    return _adapter.fetchMovieDetails(movieId);
  }

  @override
  Future<MovieResponse> fetchNowPlayingMovies() {
    return _adapter.fetchNowPlayingMovies();
  }

  @override
  Future<MovieResponse> fetchPopularMovies() {
    return _adapter.fetchPopularMovies();
  }

  @override
  Future<MovieResponse> fetchTopRatedMovies() {
    return _adapter.fetchTopRatedMovies();
  }
}

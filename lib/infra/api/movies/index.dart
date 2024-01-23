import 'package:dio/dio.dart';
import 'package:movies_app/core/domain/models/movies/movie_details.dart';
import 'package:movies_app/core/domain/models/movies/movie_response.dart';
import 'package:movies_app/core/interfaces/adapter/movie_adapter.dart';
import 'package:movies_app/infra/api/client/backend_client.dart';
import 'package:movies_app/infra/api/index.dart';

class MovieAPI extends BaseAPI implements MovieAdapter {
  @override
  Future<MovieResponse> fetchPopularMovies() async {
    Response response = await backendClient.get("/movie/popular");
    return MovieResponse.fromJSON(response.data);
  }

  @override
  Future<MovieResponse> fetchNowPlayingMovies() async {
    Response response = await backendClient.get("/movie/now_playing");
    return MovieResponse.fromJSON(response.data);
  }

  @override
  Future<MovieResponse> fetchTopRatedMovies() async {
    Response response = await backendClient.get("/movie/top_rated");
    return MovieResponse.fromJSON(response.data);
  }

  @override
  Future<MovieDetails> fetchMovieDetails(int movieId) async {
    Response response = await backendClient.get("/movie/$movieId");
    return MovieDetails.fromJSON(response.data);
  }
}

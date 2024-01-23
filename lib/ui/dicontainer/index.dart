import 'package:movies_app/core/services/movie_service.dart';
import 'package:movies_app/infra/api/movies/index.dart';

class DIContainer {
  static MovieService getMovieUseCase() {
    return MovieService(MovieAPI());
  }
}

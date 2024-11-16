// Service responsible for the movies

import 'package:get_it/get_it.dart';
import 'package:movieapp/services/htttp_service.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;
  HTTPService? _httpService;

  MovieService() {
    _httpService = getIt.get<HTTPService>();
  }
}

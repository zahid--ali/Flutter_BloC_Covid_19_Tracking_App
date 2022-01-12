import 'dart:async';

import 'package:cenimanic/src/models/country_model.dart';
import 'package:cenimanic/src/resources/countries_api_provider.dart';

import '../models/item_model.dart';
import 'movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();
  final countriesApiProvider = CountriesApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<List<Country>> fetchCountryCovidData() =>
      countriesApiProvider.fetchCountriesList();
}

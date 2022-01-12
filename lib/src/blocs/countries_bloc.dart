import 'package:cenimanic/src/models/country_model.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class CountriesBloc {
  final _repository = Repository();
  final _countriesFetcher = PublishSubject<List<Country>>();

  Stream<List<Country>> get allCountries => _countriesFetcher.stream;

  fetchAllCountries() async {
    List<Country> country = await _repository.fetchCountryCovidData();
    _countriesFetcher.sink.add(country);
  }

  dispose() {
    _countriesFetcher.close();
  }
}

final bloc = CountriesBloc();

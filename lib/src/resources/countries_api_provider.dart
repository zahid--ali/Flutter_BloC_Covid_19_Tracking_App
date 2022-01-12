import 'dart:async';
import 'package:cenimanic/src/models/country_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class CountriesApiProvider {
  Client client = Client();
  final _apiKey = 'tVaYRsPHLjNdNBu7S';

  Future<List<Country>> fetchCountriesList() async {
    var url = Uri.parse("https://disease.sh/v3/covid-19/countries");
    final response = await client.get(url);
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return parseCountries(response.body);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  List<Country> parseCountries(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Country>((json) => Country.fromJson(json)).toList();
  }
}

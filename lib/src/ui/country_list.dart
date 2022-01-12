import 'package:cenimanic/src/models/country_model.dart';
import 'package:cenimanic/src/ui/country_item.dart';
import 'package:flutter/material.dart';

import '../blocs/countries_bloc.dart';

class CountryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllCountries();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid Update'),
      ),
      body: StreamBuilder(
        stream: bloc.allCountries,
        builder: (context, AsyncSnapshot<List<Country>> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Country>> snapshot) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: snapshot.data!.length,
        itemBuilder: (BuildContext context, int index) {
          return CountryItem(snapshot.data![index]);
        });
  }
}

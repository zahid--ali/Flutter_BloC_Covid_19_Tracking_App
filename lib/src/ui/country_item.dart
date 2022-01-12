import 'package:cenimanic/src/models/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  CountryItem(this.country);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      width: double.infinity,
      height: 160,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(country.countryInfo!.flag),
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      '${country.country}',
                      style: const TextStyle(color: Colors.black),
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    width: 40,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/infected.png'),
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '${country.cases}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          'Infected',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    width: 40,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/death.png'),
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '${country.deaths}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          'Deaths',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    width: 40,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/recovered.png'),
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '${country.recovered}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          'Recovered',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

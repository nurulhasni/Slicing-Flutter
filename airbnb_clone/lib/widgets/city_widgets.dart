import 'package:flutter/material.dart';
import '../models/city.dart';

class CityCard extends StatelessWidget {
  const CityCard(this.city, {Key? key}) : super(key: key);
  final City city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.network(
              city.image,
              width: 59,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  city.subtitle,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.normal),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CitiesGrid extends StatelessWidget {
  const CitiesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2.5 / 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CityCard(cities[index]);
        },
        childCount: cities.length,
      ),
    );
  }
}

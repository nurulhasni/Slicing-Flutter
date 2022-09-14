import 'package:airbnb_clone/models/place.dart';
import 'package:flutter/material.dart';

class LiveAnyWhere extends StatelessWidget {
  const LiveAnyWhere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 500,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (context, index) {
              return PlaceCard(places[index]);
            }),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  const PlaceCard(this.place, {Key? key}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.network(
              place.image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            place.title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.9)),
          )
        ],
      ),
    );
  }
}

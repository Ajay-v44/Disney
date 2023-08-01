import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendedMovies extends StatelessWidget {
  List<String> covers = [];

  RecommendedMovies({super.key, required this.covers});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Recommended for You',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            addAutomaticKeepAlives: true,
            children: covers.map((cover) => buildCover(cover)).toList(),
          ),
        )
        // list of movies,
      ],
    );
  }
}

Widget buildCover(String cover) {
  return Container(
      height: 200,
      width: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.symmetric(vertical: 14.0),
      child: Image.network(
        cover,
        fit: BoxFit.cover,
      ));
}

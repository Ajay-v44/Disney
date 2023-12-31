import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListMovies extends StatelessWidget {
  const ListMovies({super.key});

  static List<String> logos = [
    'https://www.nicepng.com/png/full/23-233994_disney-logo-black-and-white-nba-finals-logo.png',
    'https://www.brandloyalty.com/cache/pixar.8711/pixar-s800x600.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Marvel_Logo.svg/2560px-Marvel_Logo.svg.png',
    'https://www.freepnglogos.com/uploads/star-wars-logo-31.png',
    'https://cutewallpaper.org/24/national-geographic-logo-png/national-geographic-keith-ladzinski.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: logos.length,
          itemBuilder: (context, index) {
            return buildLogo(logos[index]);
          }),
    );
  }
}

final startColor = const Color.fromARGB(255, 54, 56, 70);
final endColor = const Color.fromARGB(255, 39, 41, 53);

Widget buildLogo(String logo) {
  return Container(
    height: 70,
    width: 100,
    margin: EdgeInsets.all(4),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white54,
          width: 0.5,
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            startColor,
            endColor,
          ],
        ),
      ),
      child: Image.network(
        logo,
        fit: BoxFit.contain,
      ),
    ),
  );
}

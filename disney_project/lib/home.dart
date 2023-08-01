import 'package:flutter/material.dart';
import 'package:disney_project/widgets/appbar.dart';
import 'package:disney_project/widgets/carousal.dart';
import 'package:disney_project/widgets/bottomNavigationBar.dart';
import 'package:disney_project/widgets/listMovies.dart';
import 'package:disney_project/widgets/recomendedMovies.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const backgroundColor = Color.fromARGB(30, 34, 49, 255);
   static List<String> covers = [
    'https://media.comicbook.com/uploads1/2015/06/antmanposter-139745.jpg',
    'https://i.pinimg.com/236x/92/5d/e8/925de870f00d0f1f83502772bbc6c84c.jpg',
    'https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/18/comics-infinity-1-cover-artwork.jpg',
    'https://i.pinimg.com/originals/69/3b/5a/693b5ae03a25cb9d3a6ce3f567d1f817.jpg',
    'https://i.pinimg.com/736x/fd/12/df/fd12dfea52d3f17c9ef93a148ccf2c4c.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: disneyCustomAppBar(),


    );
  }
}

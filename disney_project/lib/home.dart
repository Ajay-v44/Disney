import 'package:flutter/material.dart';
import 'package:disney_project/widgets/appbar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const backgroundColor = Color.fromARGB(30, 34, 49, 255);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: disneyCustomAppBar(),


    );
  }
}

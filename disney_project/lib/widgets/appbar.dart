import 'package:flutter/material.dart';

const disneyLogo = 'assets/images/disney-logo.jpeg';
const kToolbarHeight = 56.0;

AppBar disneyCustomAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: SizedBox(
      height: kToolbarHeight,
      child: Image.asset(
        disneyLogo,
        fit: BoxFit.contain,
      ),
    ),
    toolbarHeight: kToolbarHeight,
  );
}

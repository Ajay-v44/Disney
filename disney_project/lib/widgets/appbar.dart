import 'package:flutter/material.dart';

const disneylogo='assets/images/logo.jpeg';
const kToolbarHeight=56.0;

AppBar disneyCustomAppBar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: SizedBox(
      height: kToolbarHeight,
      child: Image.asset(disneylogo,fit:BoxFit.contain,),
    ),
    toolbarHeight: ,
  );
}
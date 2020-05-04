import 'package:flutter/material.dart';
import 'package:mixflix/screens/homepage.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MIXFLIX",
    theme: ThemeData(fontFamily: 'Monsterrat',),
    home: Home(),
  ));
}

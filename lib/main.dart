import 'package:flutter/material.dart';
import 'package:trix_app/pages/TrixNameOfGames/King.dart';
import 'pages/Home.dart';
import 'pages/Trix.dart';
import 'pages/TrixSharake.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "NotoKufiArabic"),
      home: Home(),
      routes: {
        "trix": (context) {
          return Trix();
        },
        "trixSharake": (context) {
          return TrixSharake();
        },
        "King": (context) {
          return King();
        }
      },
    );
  }
}

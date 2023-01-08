import 'package:flutter/material.dart';

class Trix extends StatefulWidget {
  const Trix({super.key});

  @override
  State<Trix> createState() => _TrixState();
}

class _TrixState extends State<Trix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("تـــركــس", style: TextStyle(fontWeight: FontWeight.w900)),
          backgroundColor: Color.fromARGB(255, 146, 10, 10),
          centerTitle: true),
      body: Container(),
    );
  }
}

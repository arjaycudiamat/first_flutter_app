import 'package:flutter/material.dart';
import 'dart:math';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Image.asset("images/sme.png", height: 300.0, fit: BoxFit.contain,)
    );
  }
}

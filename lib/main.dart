import 'package:flutter/material.dart';
import 'package:tuto/screens/widget/widget.dart';

void main() {
  runApp(const UpperzApp());
}

class UpperzApp extends StatelessWidget {
  const UpperzApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Les widget"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: TextWidget(),
        ),
      ),
    );
  }
}

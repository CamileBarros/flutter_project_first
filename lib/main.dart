import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // O primeiro widget do app
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState(); //estado do stateful
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Segundo widget do app, toda page recebe Scaffold
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
          child: Text(
        "Counter\n${count}",
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          }),
    );
  }
}

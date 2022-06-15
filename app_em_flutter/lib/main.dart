import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Calculadora(),
      ),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _Compute createState() => _Compute();
}

class _Compute extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: "Dig"),
        )
      ],
    ));
  }
}

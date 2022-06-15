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
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Digite o valor 25",
                  labelText: "Numero",
                  suffixText: "kg",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orange,
                  )),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Digite outro 1234 valor",
                  labelText: "Numero",
                  suffixText: "kg",
                  prefixIcon: Icon(
                    Icons.analytics,
                    color: Colors.grey,
                  )),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Calcular"),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
            Text(""),
          ],
        ));
  }
}

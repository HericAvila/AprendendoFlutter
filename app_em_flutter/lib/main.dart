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
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Digite o seu peso",
                  labelText: "Peso",
                  suffixText: "Kg",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orange,
                  )),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  hintText: "Digite outro 1234 valor",
                  labelText: "Altura",
                  suffixText: "cm",
                  prefixIcon: Icon(
                    Icons.analytics,
                    color: Colors.grey,
                  )),
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text("Calcular"),
                  color: Color.fromARGB(255, 1, 9, 22),
                  textColor: Colors.white,
                ))
              ],
            ),
            Text(""),
          ],
        ));
  }
}

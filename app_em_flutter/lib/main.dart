import 'package:flutter/material.dart';
import 'dart:math';

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
  TextEditingController tfWeight = TextEditingController();
  TextEditingController tfHeight = TextEditingController();
  String output = "";

  void calculaIMC() {
    var weight;
    var height;
    var imc;

    weight = double.parse(tfWeight.text);
    height = double.parse(tfHeight.text);

    imc = (weight / pow((height / 100), 2));

    setState(() {
      output = imc.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          children: [
            TextField(
              controller: tfWeight,
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
              controller: tfHeight,
              decoration: InputDecoration(
                  hintText: "Digite sua altura",
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
                  onPressed: () {
                    calculaIMC();
                  },
                  child: Text("Calcular"),
                  color: Color.fromARGB(255, 19, 62, 132),
                  textColor: Colors.white,
                ))
              ],
            ),
            Text(output),
          ],
        ));
  }
}

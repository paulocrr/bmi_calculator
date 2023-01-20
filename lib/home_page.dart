import 'dart:math';

import 'package:bmi_calculator/widgets/card_selector.dart';
import 'package:bmi_calculator/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var height = 170.0;
  var weight = 60.0;
  var result = 0.0;
  var showResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CardSelector(
              onChange: (val) {
                print(val);
              },
            ),
            SliderCard(
              initialValue: weight,
              divisions: 100 - 50,
              max: 100,
              min: 50,
              title: 'Peso',
              onChange: (val) {
                weight = val;
              },
            ),
            SliderCard(
              initialValue: height,
              divisions: 210 - 140,
              max: 210,
              min: 140,
              title: 'Altura (cm)',
              onChange: (val) {
                height = val;
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40), // NEW
              ),
              onPressed: () {
                setState(() {
                  result = weight / pow(height / 100, 2);
                  showResults = true;
                });
              },
              child: const Text('Calcular BMI'),
            ),
            Visibility(
              visible: showResults,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Su indice de masa es ${result.round()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/widgets/card_selector.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/image_card_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          ],
        ),
      ),
    );
  }
}

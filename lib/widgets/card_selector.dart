import 'package:bmi_calculator/widgets/image_card_button.dart';
import 'package:flutter/material.dart';

class CardSelector extends StatefulWidget {
  final Function(String val)? onChange;
  const CardSelector({super.key, this.onChange});

  @override
  State<CardSelector> createState() => _CardSelectorState();
}

class _CardSelectorState extends State<CardSelector> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ImageCardButton(
            isSelected: !isSelected,
            image: "images/male.png",
            description: "Male",
            onClick: () {
              onChangeValue("male");
              setState(() {
                isSelected = false;
              });
            },
          ),
        ),
        Expanded(
          child: ImageCardButton(
            isSelected: isSelected,
            image: "images/female.png",
            description: "Female",
            onClick: () {
              onChangeValue("female");
              setState(() {
                isSelected = true;
              });
            },
          ),
        ),
      ],
    );
  }

  void onChangeValue(String value) {
    final onChange = widget.onChange;
    if (onChange != null) {
      onChange(value);
    }
  }
}

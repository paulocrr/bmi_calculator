import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ImageCardButton extends StatelessWidget {
  final String image;
  final String description;
  final bool isSelected;
  final VoidCallback? onClick;
  const ImageCardButton({
    super.key,
    required this.image,
    required this.description,
    this.isSelected = false,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onClick: onClick,
      borderColor: isSelected ? Colors.black : Colors.grey,
      backgroundColor: isSelected ? Colors.blue : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 56),
          Text(
            description,
            style: isSelected
                ? const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)
                : const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final VoidCallback? onClick;

  const CustomCard(
      {super.key,
      required this.child,
      this.backgroundColor = Colors.white,
      this.borderColor = Colors.grey,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          height: 128,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            color: backgroundColor,
          ),
          child: child,
        ),
      ),
    );
  }
}

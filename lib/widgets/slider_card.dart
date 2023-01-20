import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  final double initialValue;
  final double min;
  final double max;
  final int divisions;
  final String title;
  final Function(double val)? onChange;

  const SliderCard({
    super.key,
    required this.divisions,
    required this.max,
    required this.min,
    required this.title,
    this.onChange,
    this.initialValue = 0,
  });

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  late double _value;

  @override
  void initState() {
    super.initState();

    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${_value.round()}",
              style: const TextStyle(fontSize: 32),
            ),
            Slider(
              min: widget.min,
              max: widget.max,
              divisions: widget.divisions,
              value: _value,
              onChanged: (newValue) {
                setState(() {
                  _value = newValue;

                  if (widget.onChange != null) {
                    widget.onChange!(_value);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

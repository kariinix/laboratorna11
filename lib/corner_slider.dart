import 'package:flutter/material.dart';

class CornerSlider extends StatelessWidget {
  final String label;
  final double value;
  final Function(double) onChanged;

  const CornerSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$label: ${value.toStringAsFixed(2)}'),
        Slider(
          value: value,
          min: 0,
          max: 100,
          activeColor: Colors.pink[200],
          onChanged: onChanged,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TouchSelector extends StatelessWidget {
  const TouchSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.3),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3.0)));
  }
}

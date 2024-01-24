import 'package:flutter/material.dart';

class HeartBox extends StatelessWidget {
  const HeartBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Heartrate',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          '086',
          style: TextStyle(
            fontSize: 52,
            color: Colors.white,
            height: 0.8,
          ),
        )
      ],
    );
  }
}

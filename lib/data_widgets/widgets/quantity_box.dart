import 'package:flutter/material.dart';
import 'package:spiderhead/progress_bar/progress_bar.dart';

class QuantityBox extends StatelessWidget {
  const QuantityBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dosage',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Fine',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: ProgressBar(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '096.3%',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '0.6ml',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HeartBox extends StatelessWidget {
  const HeartBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
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
        ),
        Icon(
          Icons.favorite,
          color: Colors.white,
        )
      ],
    );
  }
}

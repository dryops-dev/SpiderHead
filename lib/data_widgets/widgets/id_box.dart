import 'package:flutter/material.dart';

class IdBox extends StatelessWidget {
  const IdBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'DOB     120287',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'CID     004938',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

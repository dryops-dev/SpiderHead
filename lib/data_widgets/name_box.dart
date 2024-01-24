import 'package:flutter/material.dart';

class NameBox extends StatelessWidget {
  const NameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'JEFF',
          style: TextStyle(color: Colors.white, fontSize: 35, height: 1),
        ),
      ],
    );
  }
}

class NameBoxPrefix extends StatelessWidget {
  const NameBoxPrefix({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Patient',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '0003',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}

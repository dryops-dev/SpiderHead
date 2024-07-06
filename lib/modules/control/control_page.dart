import 'package:flutter/material.dart';
import 'package:spiderhead/modules/control/layouts/horizontal_layout.dart';
import 'package:spiderhead/modules/control/layouts/vertical_layout.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key, required this.title});

  final String title;

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161618),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return const MyVerticalLayout();
          } else {
            return const MyHorizontalLayout();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spiderhead/modules/control/widgets/arrows_icons/arrow_icon.dart';
import 'package:spiderhead/modules/control/widgets/circular_slider/circular_slider.dart';
import 'package:spiderhead/modules/control/widgets/data_widgets/data_widget.dart';
import 'dart:math' as math;

import 'package:spiderhead/modules/control/widgets/informations.dart';

class MyHorizontalLayout extends StatefulWidget {
  const MyHorizontalLayout({super.key});

  @override
  State<MyHorizontalLayout> createState() => _MyHorizontalLayoutState();
}

class _MyHorizontalLayoutState extends State<MyHorizontalLayout> {
  int volume = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              child: Stack(alignment: AlignmentDirectional.center, children: [
                CircularSlider(
                  onAngleChanged: (angle) {
                    volume = ((angle / (math.pi * 2)) * 100).toInt();
                    setState(() {});
                  },
                ),
                const Informations(),
                const Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: ArrowIcon(
                        direction: ArrowDirection.right,
                      ),
                    ),
                  ),
                ),
                const Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: ArrowIcon(
                        direction: ArrowDirection.left,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          const Flexible(
            child: InformationsWidgetHorizontal(),
          ),
        ],
      ),
    );
  }
}

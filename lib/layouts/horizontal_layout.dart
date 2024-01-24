import 'package:flutter/material.dart';
import 'package:spiderhead/arrows_icons/arrow_icon.dart';
import 'package:spiderhead/circular_slider/circular_slider.dart';
import 'package:spiderhead/data_widgets/heartrate_box.dart';
import 'package:spiderhead/data_widgets/id_box.dart';
import 'dart:math' as math;

import 'package:spiderhead/data_widgets/name_box.dart';
import 'package:spiderhead/data_widgets/quantity_box.dart';
import 'package:spiderhead/informations.dart';
import 'package:spiderhead/rive_animation.dart';

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
            child: Column(
              children: [
                SizedBox(height: 16),
                NameBoxPrefix(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: NameBox()),
                      SizedBox(width: 20),
                      Expanded(flex: 1, child: IdBox()),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 1, child: HeartBox()),
                      SizedBox(width: 20),
                      Expanded(flex: 1, child: QuantityBox()),
                    ],
                  ),
                ),
                Expanded(child: RiveSelectColor())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

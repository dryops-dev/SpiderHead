import 'package:flutter/material.dart';
import 'package:spiderhead/arrows_icons/arrow_icon.dart';
import 'package:spiderhead/circular_slider/circular_slider.dart';
import 'package:spiderhead/data_widgets/data_widget.dart';
import 'package:spiderhead/data_widgets/widgets/heartrate_box.dart';
import 'package:spiderhead/data_widgets/widgets/id_box.dart';
import 'dart:math' as math;

import 'package:spiderhead/data_widgets/widgets/name_box.dart';
import 'package:spiderhead/data_widgets/widgets/quantity_box.dart';
import 'package:spiderhead/informations.dart';
import 'package:spiderhead/rive_animation.dart';

class MyVerticalLayout extends StatefulWidget {
  const MyVerticalLayout({super.key});

  @override
  State<MyVerticalLayout> createState() => _MyVerticalLayoutState();
}

class _MyVerticalLayoutState extends State<MyVerticalLayout> {
  int volume = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 300,
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

            //// TEXT AND PROGRESS BAR
            //
            //
            const InformationsWidgetVertical(),

            //// RIVE APPLICATION
            //
            //
            const Expanded(
              child: RiveSelectColor(),
            )
          ],
        ),
      ),
    );
  }
}

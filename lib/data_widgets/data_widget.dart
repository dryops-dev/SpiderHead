import 'package:flutter/material.dart';
import 'package:spiderhead/data_widgets/widgets/heartrate_box.dart';
import 'package:spiderhead/data_widgets/widgets/id_box.dart';
import 'package:spiderhead/data_widgets/widgets/name_box.dart';
import 'package:spiderhead/data_widgets/widgets/quantity_box.dart';
import 'package:spiderhead/rive_animation.dart';

class InformationsWidgetVertical extends StatelessWidget {
  const InformationsWidgetVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}

class InformationsWidgetHorizontal extends StatelessWidget {
  const InformationsWidgetHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:spiderhead/arrows_icons/arrow_icon.dart';
import 'package:spiderhead/circular_slider.dart';
import 'package:spiderhead/data_widgets/heartrate_box.dart';
import 'package:spiderhead/data_widgets/id_box.dart';
import 'dart:math' as math;

import 'package:spiderhead/data_widgets/name_box.dart';
import 'package:spiderhead/data_widgets/quantity_box.dart';
import 'package:spiderhead/informations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpiderHead Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'SpiderHead Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int volume = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161618),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                //color: Colors.amber,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 340,
                    maxWidth: 340,
                  ),
                  //height: 340,
                  //width: MediaQuery.of(context).size.width,
                  child:
                      Stack(alignment: AlignmentDirectional.center, children: [
                    CircularSlider(
                      width: 340,
                      radius: (MediaQuery.of(context).size.width / 2) > 340 / 2
                          ? 340 / 3
                          : (MediaQuery.of(context).size.width / 3),
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
              const NameBoxPrefix(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: NameBox()),
                    SizedBox(width: 20),
                    Expanded(flex: 1, child: IdBox()),
                  ],
                ),
              ),
              const Padding(
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
              Container(
                //color: Colors.amber,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxHeight: 340,
                      minHeight: 100,
                      maxWidth: 340,
                      minWidth: 140),
                  child: const RiveAnimation.asset(
                    'assets/spiderhead.riv',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _textStyle({double? fontSize = 14}) {
    return TextStyle(color: Colors.white, fontSize: fontSize);
  }
}

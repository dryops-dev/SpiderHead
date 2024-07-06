import 'dart:math';
import 'package:vector_math/vector_math.dart' hide Colors;
import 'package:flutter/material.dart';

class DecorSlider extends CustomPainter {
  final double radius;

  DecorSlider({required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);
    final paintCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2; //epaisseur du trait
    canvas.drawCircle(center, radius + 20, paintCircle);

    //155 radius ->> 135 + 20

    final paintRules = Paint()
      ..strokeWidth = 30 //Epaisseur du trait
      ..color = const Color.fromARGB(255, 22, 22, 24)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    for (double i = 0; i < 360; i += 1) {
      final x = center.dx + ((radius + 15) * cos(radians(i)));
      final y = center.dy + ((radius + 15) * sin(radians(i)));
      int regle = 0;
      i % 5 == 0 ? regle = (radius).toInt() : regle = (radius + 8).toInt();
      final x2 = center.dx + (regle * cos(radians(i)));
      final y2 = center.dy + (regle * sin(radians(i)));
      canvas.drawLine(Offset(x, y), Offset(x2, y2), paintRules);
    }

    //Création indicateur max
    final paintDetails = Paint()
      ..strokeWidth = 30 //Epaisseur du trait
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    final cosCalc = cos(radians(15));
    final sinCalc = sin(radians(15));
    final x = center.dx + ((radius + 20) * cosCalc);
    final y = center.dy + ((radius + 20) * sinCalc);
    final x2 = center.dx + (radius * cosCalc);
    final y2 = center.dy + (radius * sinCalc);
    final x3 = center.dx + ((radius - 10) * cosCalc);
    final y3 = center.dy + ((radius - 10) * sinCalc);
    canvas.drawLine(Offset(x, y), Offset(x3, y3), paintDetails);
    paintDetails.strokeWidth = 2;
    canvas.drawLine(Offset(x, y), Offset(x2, y2), paintDetails);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

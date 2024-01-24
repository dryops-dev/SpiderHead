import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spiderhead/main.dart';
import 'package:spiderhead/utils/color.dart';
import 'package:spiderhead/utils/maths.dart';
import 'package:flutter/material.dart';

class AbstractSliderPainter extends ConsumerWidget {
  final double startAngle;
  final double currentAngle;
  final Size canvasSize;

  const AbstractSliderPainter({
    super.key,
    required this.startAngle,
    required this.currentAngle,
    required this.canvasSize,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var colorStatus = ref.watch(colorProvider);
    return CustomPaint(
      size: canvasSize,
      painter: SliderPainter(
        startAngle: startAngle,
        currentAngle: currentAngle,
        color: ColorHelper.getValue(colorStatus)
            .color, /*radius: /*widget.radius*/ radius*/
      ),
    );
  }
}

class SliderPainter extends CustomPainter {
  final double startAngle;
  final double currentAngle;
  final Color color;

  SliderPainter({
    required this.startAngle,
    required this.currentAngle,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);

    Rect rect = Rect.fromCircle(center: center, radius: radius);

    var rainbowPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    //garder si on change l'arrière du slider
    /*canvas.drawArc(
      rect,
      startAngle,
      pi * 2,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth,
    );*/
    canvas.drawArc(
      rect,
      startAngle,
      currentAngle,
      false,
      rainbowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

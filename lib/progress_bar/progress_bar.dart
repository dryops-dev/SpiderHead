import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spiderhead/main.dart';
import 'package:spiderhead/utils/color.dart';

class ProgressBar extends ConsumerWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var statusColor = ref.watch(colorProvider);
    return CustomPaint(
      painter: LinePainter(ColorHelper.getValue(statusColor).color),
      child: Container(),
    );
  }
}

class LinePainter extends CustomPainter {
  LinePainter(this.color);
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 31, 102, 164)
      ..strokeWidth = 18
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(const Offset(0.0, 0.0), Offset(size.width, 0), paint);
    paint.color =
        //Color.fromARGB(200, 31, 102, 164).;
        const Color.fromARGB(255, 19, 67, 106);
    paint.strokeWidth = 14;
    canvas.drawLine(const Offset(0.0, 0.0), Offset(size.width, 0.0), paint);
    paint.color = color;
    paint.strokeWidth = 14;
    canvas.drawLine(
        const Offset(0.0, 0.0), Offset(size.width / 1.2, 0.0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spiderhead/main.dart';

class ProgressBar extends ConsumerWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var color = ref.watch(colorProvider);
    return CustomPaint(
      painter: LinePainter(colorTranslatorIntTmp(color)),
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
    paint.color = const Color.fromARGB(255, 19, 67, 106);
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

Color colorTranslatorIntTmp(int color) {
  switch (color) {
    case 0:
      return Color(0xFF2196F3);
    case 1:
      return Color(0xFFFFEB3B);
    case 2:
      return Color(0xFF4CAF50);
    case 3:
      return Color(0xFF6B12AA);
    case 4:
      return Color(0xFF2731E4);
    default:
      return Colors.black;
  }
}

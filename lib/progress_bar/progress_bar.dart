import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: Container(),
    );
  }
}

class LinePainter extends CustomPainter {
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
    paint.color = Colors.blue;
    paint.strokeWidth = 14;
    canvas.drawLine(
        const Offset(0.0, 0.0), Offset(size.width / 1.2, 0.0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

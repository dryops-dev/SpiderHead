import 'package:flutter/material.dart';

enum ArrowDirection {
  left,
  right,
}

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({
    super.key,
    required this.direction,
  });

  final ArrowDirection direction;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: direction == ArrowDirection.left
          ? ArrowPainterLeft()
          : ArrowPainterRight(),
      child: const SizedBox(
        width: 40,
        height: 40,
      ),
    );
  }
}

//Svg Meilleur solution

class ArrowPainterRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(const Offset(14.0, 20.0), const Offset(20, 20), paint);
    canvas.drawLine(const Offset(20.0, 26.0), const Offset(27, 20), paint);
    canvas.drawLine(const Offset(20.0, 14.0), const Offset(27, 20), paint);
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(const Offset(20, 20), 14, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ArrowPainterLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(const Offset(20.0, 20.0), const Offset(26, 20), paint);
    canvas.drawLine(const Offset(20.0, 26.0), const Offset(14, 20), paint);
    canvas.drawLine(const Offset(20.0, 14.0), const Offset(14, 20), paint);
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(const Offset(20, 20), 14, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

import 'dart:math';
import 'package:vector_math/vector_math.dart' hide Colors;
import 'package:flutter/material.dart';

double radius = 135;
double strokeWidth = 30;
const fullAngleInRadians = pi * 2;
double toRadian(double value) => (value * pi) / 180;
double toAngle(Offset position, Offset center) => (position - center).direction;
double normalizeAngle(double angle) => normalize(angle, fullAngleInRadians);
double normalize(double value, double max) => (value % max + max) % max;
Offset toPolar(Offset center, double radians, double radius) =>
    center + Offset.fromDirection(radians, radius);

class CircularSlider extends StatefulWidget {
  final ValueChanged<double> onAngleChanged;

  const CircularSlider({
    super.key,
    required this.onAngleChanged,
  });

  @override
  State<CircularSlider> createState() => _CircularSliderState();
}

class _CircularSliderState extends State<CircularSlider> {
  Offset _currentDragOffset = Offset.zero;

  double currentAngle = 2;

  double startAngle = toRadian(110);

  double totalAngle = toRadian(360);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constaint) {
      Size screenSize = constaint.biggest;
      Size canvasSize = screenSize;
      radius = (screenSize.height) / 2.5;

      Offset center = canvasSize.center(Offset.zero);
      Offset knobPos =
          toPolar(center, currentAngle + startAngle, /*widget.radius*/ radius);

      print(screenSize);
      return Container(
        child: Stack(
          children: [
            CustomPaint(
              size: canvasSize,
              painter: SliderPainter(
                startAngle: startAngle,
                currentAngle: currentAngle, /*radius: /*widget.radius*/ radius*/
              ),
            ),
            CustomPaint(
              size: canvasSize,
              painter: _CircleDetails(radius: /*widget.radius*/ radius),
            ),
            Positioned(
              left: knobPos.dx - 30,
              top: knobPos.dy - 30,
              child: GestureDetector(
                onPanStart: (details) {
                  RenderBox getBox = context.findRenderObject() as RenderBox;
                  _currentDragOffset =
                      getBox.globalToLocal(details.globalPosition);
                },
                onPanUpdate: (details) {
                  var previousOffset = _currentDragOffset;
                  _currentDragOffset += details.delta;
                  var angle = currentAngle +
                      toAngle(_currentDragOffset, center) -
                      toAngle(previousOffset, center);
                  currentAngle = normalizeAngle(angle);
                  widget.onAngleChanged(currentAngle);
                  setState(() {});
                },
                child: _Knob(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class SliderPainter extends CustomPainter {
  final double startAngle;
  final double currentAngle;

  SliderPainter({
    required this.startAngle,
    required this.currentAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);

    Rect rect = Rect.fromCircle(center: center, radius: radius);

    var rainbowPaint = Paint()
      ..color = Color(0xFF2196F3)
      ..color = Color(0xFFFFEB3B)
      ..color = Color(0xFF4CAF50)
      ..color = Color(0xFF6B12AA)
      ..color = Color(0xFF2731E4)
      ..color = Color(0xFF2196F3)
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

class _Knob extends StatelessWidget {
  const _Knob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.3),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3.0)));
  }
}

//______________________________

class _CircleDetails extends CustomPainter {
  final double radius;

  _CircleDetails({required this.radius});
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

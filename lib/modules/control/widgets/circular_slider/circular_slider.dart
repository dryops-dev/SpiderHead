import 'package:spiderhead/modules/control/widgets/circular_slider/color_slider.dart';
import 'package:spiderhead/modules/control/widgets/circular_slider/touch_slider.dart';
import 'package:spiderhead/utils/maths.dart';
import 'package:flutter/material.dart';
import 'package:spiderhead/modules/control/widgets/circular_slider/decor_slider.dart';

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

      return Stack(
        children: [
          AbstractSliderPainter(
            startAngle: startAngle,
            currentAngle: currentAngle,
            canvasSize: canvasSize, /*radius: /*widget.radius*/ radius*/
          ),
          CustomPaint(
            size: canvasSize,
            painter: DecorSlider(radius: /*widget.radius*/ radius),
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
                if (currentAngle < 4.50) {
                  widget.onAngleChanged(currentAngle);
                  setState(() {});
                }
              },
              child: const TouchSelector(),
            ),
          ),
        ],
      );
    });
  }
}

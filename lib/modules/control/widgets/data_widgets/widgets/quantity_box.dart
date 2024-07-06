import 'package:flutter/material.dart';
import 'package:spiderhead/modules/control/widgets/progress_bar/progress_bar.dart';

class QuantityBox extends StatelessWidget {
  const QuantityBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dosage',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Fine',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: ProgressBar(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '096.3%',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '0.6ml',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key});

  @override
  _LoadingBarState createState() => _LoadingBarState();
}

class _LoadingBarState extends State<LoadingBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 18,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 31, 102, 164), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 67, 106),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: _animation.value,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';
import 'package:spiderhead/main.dart';

class RiveSelectColor extends ConsumerWidget {
  const RiveSelectColor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late StateMachineController controller;
    return RiveAnimation.asset(
      'assets/spiderhead.riv',
      onInit: (Artboard artboard) async {
        controller = StateMachineController.fromArtboard(
          artboard,
          'State Machine 1',
          onStateChange: (String a, String b) {
            ref.watch(colorProvider.notifier).state = colorTranslatorTmp(b);
          },
        )!;
        artboard.addController(controller);

        //Need this if web change layout. Get the actual state of Rive Animation
        SMIInput<double>? levelInput = controller.findInput('Number 1');
        if (levelInput != null) {
          levelInput.value = ref.watch(colorProvider.notifier).state.toDouble();
        }
      },
    );
  }
}

int colorTranslatorTmp(String color) {
  switch (color) {
    case "Blue":
      return 0;
    case "Yellow":
      return 1;
    case "Green":
      return 2;
    case "Purple":
      return 3;
    case "DarkBlue":
      return 4;
    default:
      return -1;
  }
}

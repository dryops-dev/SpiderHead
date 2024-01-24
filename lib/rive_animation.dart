import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';
import 'package:spiderhead/main.dart';
import 'package:spiderhead/utils/color.dart';

class RiveSelectColor extends ConsumerWidget {
  const RiveSelectColor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late StateMachineController controller;
    late SMIInput<double>? status;

    //Listen for arrowIcons changes
    ref.listen(colorProvider, (previous, next) {
      status!.value = next.toDouble();
    });
    return RiveAnimation.asset(
      'assets/spiderhead.riv',
      onInit: (Artboard artboard) async {
        controller = StateMachineController.fromArtboard(
          artboard,
          'State Machine 1',
          onStateChange: (String a, String b) {
            if (b != a) {
              ref.watch(colorProvider.notifier).state =
                  ColorHelper.stateFromString(b);
            }
          },
        )!;
        artboard.addController(controller);

        //Need this if web change layout. Get the actual state of Rive Animation
        status = controller.findInput('Number 1');
        if (status != null) {
          status!.value = ref.watch(colorProvider.notifier).state.toDouble();
        }
      },
    );
  }
}

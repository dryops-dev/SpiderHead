import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spiderhead/main.dart';

class N40 {
  static String codeName = "N-40";
  static String name = "Luvactin";
  static String codeBar = "NDC 46857 - 312 - 09";
}

class PreInformation extends ConsumerWidget {
  const PreInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var numberStatus = ref.watch(colorProvider);
    throw UnimplementedError();
  }
}

class Informations extends StatelessWidget {
  const Informations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Permet d'avoir une ligne de text avec : Diff TextStyle + Alignement
        RichText(
            text: const TextSpan(children: [
          TextSpan(text: '1.5mL', style: TextStyle(color: Colors.white)),
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Text(' /hr',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 10,
                  ))),
        ])),
        const Text(
          'N-40',
          style: TextStyle(color: Colors.white, fontSize: 50, height: 1),
        ),
        const Text(
          'NDC 46857 - 312 - 09',
          style: TextStyle(color: Colors.white60, height: 1),
        ),
        const Text(
          '"Luvactin"',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        const Text(
          'LETHAL',
          style: TextStyle(color: Colors.white70),
        ),
        const Text(
          'SAFE',
          style: TextStyle(color: Colors.white, height: 1),
        ),
      ],
    );
  }
}

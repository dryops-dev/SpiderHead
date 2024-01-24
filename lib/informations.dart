import 'package:flutter/material.dart';

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

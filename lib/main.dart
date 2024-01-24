import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spiderhead/layouts/vertical_layout.dart';
import 'package:spiderhead/layouts/horizontal_layout.dart';

void main() {
  runApp(
    const ProviderScope(
      // Wrap your app with ProviderScope
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpiderHead Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'SpiderHead Demo'),
    );
  }
}

final colorProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161618),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return const MyVerticalLayout();
          } else {
            return const MyHorizontalLayout();
          }
        },
      ),
    );
  }
}

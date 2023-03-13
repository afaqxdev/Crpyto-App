import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/sixProvider.dart';

class ExampleSix extends StatefulWidget {
  const ExampleSix({super.key});

  @override
  State<ExampleSix> createState() => _ExampleSixState();
}

class _ExampleSixState extends State<ExampleSix> {
  double width = 100;

  @override
  Widget build(BuildContext context) {
    print("builderrrrrrr");
    final changer = Provider.of<Animations>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Center(
        child: Consumer<Animations>(builder: (context, value, child) {
          return AnimatedContainer(
              height: value.Width,
              width: value.Height,
              curve: Curves.fastOutSlowIn,
              decoration:
                  BoxDecoration(color: value.color, borderRadius: value.radius),
              duration: const Duration(milliseconds: 500));
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        changer.setsatee();
      }),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class AnimationBg extends StatefulWidget {
  const AnimationBg({Key? key}) : super(key: key);

  @override
  State<AnimationBg> createState() => _AnimationBgState();
}

class _AnimationBgState extends State<AnimationBg>
    with TickerProviderStateMixin {
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  List<Color> colorList = [
    const Color.fromARGB(255, 248, 150, 150),
    const Color.fromARGB(199, 255, 255, 255),
    const Color.fromARGB(195, 255, 255, 255),
    // const Color(0xFFCF0A0A),
    // Color.fromARGB(255, 228, 28, 1),
    // const Color(0xFFF44336),
  ];
  Color bottomColor = const Color.fromARGB(255, 243, 243, 243);
  Color topColor = const Color.fromARGB(255, 201, 201, 201);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = const Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

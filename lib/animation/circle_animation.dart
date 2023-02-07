import "package:animation/constant/app_const.dart";
import "package:animation/widgets/half_circle_clipper.dart";
import "package:flutter/material.dart";

class CircleAnimation extends StatefulWidget {
  const CircleAnimation({super.key});

  @override
  State<CircleAnimation> createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: const HalfCircleClipper(side: CircleSide.left),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color(0xff0057b7),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            ClipPath(
              clipper: const HalfCircleClipper(side: CircleSide.right),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color(0xffffd700),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

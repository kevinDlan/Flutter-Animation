import "package:flutter/material.dart";

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  double side = 10.0;
  double opacity = 1.0;
  TextEditingController controller = TextEditingController(text: "10.0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text Animation'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: MediaQuery.of(context).size.width / 2 - (side / 2),
                    child: Container(
                      height: side,
                      width: side,
                      color: Color.fromRGBO(0, 128, 0, opacity),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: controller,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                side = double.parse(controller.text.trim());
                setState(() {});
              },
              child: const Text('Set Size'),
            )
          ],
        ));
  }
}

// https://app.pluralsight.com/course-player?clipId=5e3e015b-9b60-4c22-a476-fee306b27b29

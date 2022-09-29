import 'dart:math';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello chers geeks. nous somme upperz et nous sommes ravis que vous faite partie de notre communauté",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class VerticalHorizontalShow extends StatelessWidget {
  const VerticalHorizontalShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.green,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.brown,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.amber,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.redAccent,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomContainer(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.limeAccent,
            ),
          ],
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  const CustomContainer({Key? key, this.color, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.green,
        ),
      ],
    );
  }
}

class CenteredStackWidget extends StatelessWidget {
  const CenteredStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Positioned(
          left: 50,
          top: 50,
          right: 50,
          bottom: 50,
          child: Container(
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 80,
          top: 80,
          right: 80,
          bottom: 80,
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class MultiColorOnContainer extends StatefulWidget {
  const MultiColorOnContainer({Key? key}) : super(key: key);

  @override
  State<MultiColorOnContainer> createState() => _MultiColorOnContainerState();
}

class _MultiColorOnContainerState extends State<MultiColorOnContainer> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.amberAccent,
    Colors.blue,
    Colors.purple,
  ];
  Random random = Random();

  int index = 0;

  void changeColorIndex() {
    setState(() => index = random.nextInt(6));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          height: 150,
          width: 150,
          duration: const Duration(
            seconds: 1,
          ),
          decoration: BoxDecoration(
            color: colors[index],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: changeColorIndex,
          child: const Text("Changer la couleur"),
        )
      ],
    );
  }
}

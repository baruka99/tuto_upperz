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

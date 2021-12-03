import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  late final Animation<Color?> fadeAnimation;

  FadeContainer({required this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "fade",
        child: Container(
          decoration: BoxDecoration(
            color: fadeAnimation.value
          ),
        ));
  }
}

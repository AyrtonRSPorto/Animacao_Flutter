import 'package:animation/screens/home/widgets/animated_list_view.dart';
import 'package:animation/screens/home/widgets/fade_container.dart';
import 'package:animation/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimationHome extends StatelessWidget {
  late final AnimationController controller;

  StaggerAnimationHome({required this.controller}) :
        containerGrow = CurvedAnimation(
            parent: controller,
            curve: Curves.ease
        ),
        listSlidePosition = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 0),
          end: const EdgeInsets.only(bottom: 80)
        ).animate(
          CurvedAnimation(
              parent: controller,
              curve: const Interval(
                0.325,
                0.8,
                curve: Curves.ease
              )
          )
        ),
        fadeAnimation = ColorTween(
          begin: const Color.fromRGBO(247, 64, 106, 1.0),
          end: const Color.fromRGBO(247, 64, 106, 0.0)
        ).animate(
          CurvedAnimation(
              parent: controller,
              curve: Curves.decelerate)
        );

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color?> fadeAnimation;

  Widget _buidAnimation(BuildContext context, Widget? child){
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(
              containerGrow: containerGrow,
            ),
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeAnimation: fadeAnimation,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: AnimatedBuilder(
          animation: controller,
          builder: _buidAnimation,
        ),
      ),
    );
  }
}

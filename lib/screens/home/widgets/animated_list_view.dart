import 'package:animation/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          subtitle: 'Com o Ayrton Porto',
          title: 'Estudar Flutter',
          margin: listSlidePosition.value * 1,
          image: const AssetImage('images/rick.jpeg'),
        ),
        ListData(
          subtitle: 'No Nubank',
          title: 'Trabalhar com Flutter',
          margin: listSlidePosition.value * 0,
          image: const AssetImage('images/rick.jpeg'),
        ),
      ],
    );
  }
}

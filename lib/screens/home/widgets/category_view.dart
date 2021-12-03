import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Tarefas'];

  int _category = 0;

  void selectFoward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _category > 0 ? selectBackward : null,
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        IconButton(
          onPressed: _category < categories.length -1 ? selectFoward : null,
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.black,
        ),
      ],
    );
  }
}

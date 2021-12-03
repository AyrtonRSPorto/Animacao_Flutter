import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  late final String title;
  late final String subtitle;
  late final ImageProvider image;
  late final EdgeInsets margin;

  ListData(
      {required this.title,
      required this.image,
      required this.margin,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(color: Colors.grey, width: 1.0),
              bottom: BorderSide(color: Colors.grey, width: 1.0))),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

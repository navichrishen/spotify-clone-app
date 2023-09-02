import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LongAlbum extends StatelessWidget {
  final String image;
  final String title;
  const LongAlbum({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 180,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(5)),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ]),
      ),
      onTap: () {},
    );
  }
}

import 'package:flutter/material.dart';

class LongAlbum extends StatelessWidget {
  final String image;
  final String title;
  const LongAlbum({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // playlist image
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
                // playlist name
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ]),
        ),
        onTap: () {},
      ),
    );
  }
}

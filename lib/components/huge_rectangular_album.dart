import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HugeAlbum extends StatelessWidget {
  final String albumName;
  final String image;
  final String likeIcon;
  final String playIcon;

  // Passing the values to the constructor
  const HugeAlbum(
      {required this.image,
      required this.albumName,
      required this.likeIcon,
      required this.playIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(5)),
      // main row of the widget
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            image,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        // Columns for the two text widgets
        Column(
          children: [
            Text(
              albumName,
              style: const TextStyle(
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              albumName,
              style: const TextStyle(
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(
              height: 40,
            ),

            // Row of the two icon buttons
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(likeIcon),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage(playIcon))))
              ],
            )
          ],
        ),
      ]),
    );
  }
}

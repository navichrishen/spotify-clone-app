import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HugeAlbum extends StatelessWidget {
  final String albumName;
  final String singerName;
  final String image;
  final String likeIcon;
  final String playIcon;

  // Passing the values to the constructor
  const HugeAlbum(
      {required this.image,
      required this.albumName,
      required this.likeIcon,
      required this.playIcon,
      required this.singerName,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(5)),
      // main row of the widget
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              image,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // Rows of the first text line
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    albumName,
                    style: const TextStyle(
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              // Rows of the second text line
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    singerName,
                    style: const TextStyle(
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.normal,
                        color: Colors.white54,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              // Row of the like button and play button
              Row(children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(likeIcon),
                  ),
                ),
                const SizedBox(
                  width: 110,
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(playIcon),
                  ),
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}

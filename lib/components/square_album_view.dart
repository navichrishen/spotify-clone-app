import 'package:flutter/material.dart';

class SquareAlbum extends StatelessWidget {
  final String image;
  final String albumName;
  const SquareAlbum({required this.image, required this.albumName, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // main container to hold album and album name
      child: Container(
        width: 150,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 150,
              height: 150,
            ),
            // space between the album and album name
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                albumName,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

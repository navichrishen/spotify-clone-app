import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SquareAlbum extends StatelessWidget {
  final String image;
  final String albumName;
  const SquareAlbum({required this.image, required this.albumName, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 150,
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                albumName,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
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

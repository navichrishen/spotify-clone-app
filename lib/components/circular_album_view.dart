import 'package:flutter/material.dart';

class CircularAlbum extends StatelessWidget {
  final String image;
  const CircularAlbum({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      // main row to hold the circular image button
      child: Row(
        children: [
          InkWell(
            customBorder:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                image,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 20,
          ),
          // column to maintain the album title and artist name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'NEW RELEASE FROM',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Kasun Kalhara',
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

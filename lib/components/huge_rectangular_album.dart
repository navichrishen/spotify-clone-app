import 'package:flutter/material.dart';

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
        color: Colors.white10,
        borderRadius: BorderRadius.circular(5),
      ),
      // main row of the widget
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
          // expanded widget to accquire remaing space
          Expanded(
            child: Container(
              color: Colors.white12,
              // positioning the components inside the container
              child: Stack(
                children: [
                  Positioned(
                    top: 25,
                    left: 20,
                    child: Text(
                      albumName,
                      style: const TextStyle(
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: Text(
                      singerName,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    child: IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(likeIcon),
                        size: 25,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    child: IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(playIcon),
                        size: 55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

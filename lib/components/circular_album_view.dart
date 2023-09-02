import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CircularAlbum extends StatelessWidget {
  final String image;
  const CircularAlbum({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Column(
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
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
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'NEW RELEASE FROM',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kasun Kalhara',
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

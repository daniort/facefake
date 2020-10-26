import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
              child: Row(
          children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _newStory(),
                ),
                Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                child: _otherStory(),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                child: _otherStory(),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                child: _otherStory(),
              ),
          ]
    ),
      ),
    );
  }
}

Widget _newStory() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl:
              "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/24296453_2179572178735095_4833817228010695225_n.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ER91oODXqnkAX91xkoe&_nc_ht=scontent-qro1-1.xx&oh=70aff26f7d2625d7d7fed9ea6145b835&oe=5FBABC96",
          height: double.infinity,
          width: 110.0,
          fit: BoxFit.cover,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          height: 55,
          width: 110,
          child: Center(
            child: Text(
              "Publica una\nHistoria",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      Positioned(
        top: 95.0,
        left: 40.0,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              color: Colors.blue[600],
            ),
            height: 30,
            width: 30,
            child: Center(
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _otherStory() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl:
              "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/100087216_4479507388741551_6999648725031190528_n.jpg?_nc_cat=104&ccb=2&_nc_sid=13bebb&_nc_ohc=XaL7uAwZybMAX9dl5TF&_nc_ht=scontent-qro1-1.xx&oh=8cda9d60801456d33281af00ec74e50d&oe=5FBB4AC2",
          height: double.infinity,
          width: 110.0,
          fit: BoxFit.cover,
        ),
      ),
      Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "Denisse Amelie",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
      Positioned(
        top: 8.0,
        left: 8.0,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              color: Colors.blue[600],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: CachedNetworkImageProvider(
                  "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/24296453_2179572178735095_4833817228010695225_n.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ER91oODXqnkAX91xkoe&_nc_ht=scontent-qro1-1.xx&oh=70aff26f7d2625d7d7fed9ea6145b835&oe=5FBABC96"),
            ),
          ),
        ),
      ),
    ],
  );
}

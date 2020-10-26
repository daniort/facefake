import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BarRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
           return Padding(padding: const EdgeInsets.all(8.0), child: _newRoom());
          }
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: _usersActive(),
          );
        },
      ),
    );
  }
}

Widget _newRoom() {
  return OutlineButton(
    onPressed: () => print('Create Room'),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    color: Colors.white,
    textColor: Colors.blue,
    child: Row(
      children: [
        Icon(
          Icons.video_call,
          size: 35.0,
          color: Colors.purple,
        ),
        const SizedBox(width: 4.0),
        Text('Create\nRoom'),
      ],
    ),
  );
}

Widget _usersActive() {
  return Stack(
    alignment: Alignment.center,
    children: [
      CircleAvatar(
        backgroundColor: Colors.grey[300],
        backgroundImage: CachedNetworkImageProvider(
            "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/100087216_4479507388741551_6999648725031190528_n.jpg?_nc_cat=104&ccb=2&_nc_sid=13bebb&_nc_ohc=XaL7uAwZybMAX9dl5TF&_nc_ht=scontent-qro1-1.xx&oh=8cda9d60801456d33281af00ec74e50d&oe=5FBB4AC2"),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(30),
            ),
            height: 13,
            width: 13,
          ),
        ),
      ),
    ],
  );
}

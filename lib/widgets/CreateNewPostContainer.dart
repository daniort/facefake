import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateNewPostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  backgroundImage: CachedNetworkImageProvider(
                      "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/24296453_2179572178735095_4833817228010695225_n.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ER91oODXqnkAX91xkoe&_nc_ht=scontent-qro1-1.xx&oh=70aff26f7d2625d7d7fed9ea6145b835&oe=5FBABC96"),
                ),
                SizedBox(width: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "¿Qué estás pensando?",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            const VerticalDivider(width: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  icon: Opacity(
                    opacity: 0.7,
                    child: Icon(
                      FontAwesomeIcons.video,
                      color: Colors.red,
                      size: 16,
                    ),
                  ),
                  label: Text("En vivo", style: TextStyle(color: Colors.grey)),
                  onPressed: () {
                    print("En Vivo");
                  },
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                  icon: Opacity(
                    opacity: 0.7,
                    child: Icon(
                      FontAwesomeIcons.images,
                      color: Colors.green,
                      size: 16,
                    ),
                  ),
                  label: Text("Foto", style: TextStyle(color: Colors.grey)),
                  onPressed: () {
                    print("En Vivo");
                  },
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(
                  icon: Opacity(
                    opacity: 0.7,
                    child: Icon(
                      FontAwesomeIcons.video,
                      color: Colors.purple,
                      size: 16,
                    ),
                  ),
                  label: Text("Sala", style: TextStyle(color: Colors.grey)),
                  onPressed: () {
                    print("En Vivo");
                  },
                )
              ],
            )
          ],
        ));
  }
}

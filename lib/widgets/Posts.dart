import 'package:cached_network_image/cached_network_image.dart';
import 'package:facefake/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10, bottom: 10),
      //height: 180,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  backgroundImage: CachedNetworkImageProvider(
                      "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/24296453_2179572178735095_4833817228010695225_n.jpg?_nc_cat=111&ccb=2&_nc_sid=85a577&_nc_ohc=ER91oODXqnkAX91xkoe&_nc_ht=scontent-qro1-1.xx&oh=70aff26f7d2625d7d7fed9ea6145b835&oe=5FBABC96"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Daniel Ortiz",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "1 Hora ·",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        Icon(FontAwesomeIcons.globeAmericas,
                            color: Colors.grey, size: 12),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Icon(FontAwesomeIcons.ellipsisH,
                          color: Colors.grey, size: 12),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Un fin de semana muy divertido, a por mas días así :3",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            // padding: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CachedNetworkImage(
                imageUrl:
                    "https://static.wixstatic.com/media/eac019_0526d157983745b5b4bbebf8a087a8d0~mv2.jpg/v1/fill/w_406,h_270,al_c,q_80,usm_0.66_1.00_0.01/Urban_Picnick_d1%20(60).webp"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Reactions(
                        icon: FontAwesomeIcons.solidHeart,
                        size: 12.0,
                        color: Colors.red,
                        onPressed: () => print("buscar")),
                    Reactions(
                        icon: FontAwesomeIcons.solidThumbsUp,
                        size: 12.0,
                        color: Colors.blue,
                        onPressed: () => print("buscar")),
                    Text("22"),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "18 comentarios",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "15 veces compartido",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                icon: Icon(
                    FontAwesomeIcons.thumbsUp,
                    color: Colors.grey,
                    size: 16,
                  ),
                label: Text("Me gusta", style: TextStyle(color: Colors.grey)),
                onPressed: () {
                  print("En Vivo");
                },
              ),
              
              FlatButton.icon(
                icon: Icon(
                    FontAwesomeIcons.commentAlt,
                    color: Colors.grey,
                    size: 16,
                  ),
                label: Text("Comentar", style: TextStyle(color: Colors.grey)),
                onPressed: () {
                  print("En Vivo");
                },
              ),
              
              FlatButton.icon(
                icon: Icon(
                  FontAwesomeIcons.share,
                  color: Colors.grey,
                  size: 16,
                ),
                label: Text("Compartir", style: TextStyle(color: Colors.grey)),
                onPressed: () {
                  print("En Vivo");
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

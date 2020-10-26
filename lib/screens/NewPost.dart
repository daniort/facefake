import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  TextEditingController _post;
  FirebaseDatabase realDB = new FirebaseDatabase();
  String url = "https://ep01.epimg.net/elpais/imagenes/2018/08/30/mundo_animal/1535610951_523915_1535611384_noticia_normal_recorte1.jpg";

  @override
  void initState() {
    _post = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Crear publicación",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              if (_post.text.isNotEmpty) {
                //Guardar en la BD
                print("guarardar");
                realDB.reference().child('posts').push().set({
                  "content": _post.text,
                  "url": url,
                });
                print("guardado");
                _post.clear();
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "PUBLICAR",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(FontAwesomeIcons.globeAmericas,
                                      color: Colors.grey, size: 12),
                                  Text(
                                    " Público",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2.0, bottom: 4.0),
                                    child: Icon(FontAwesomeIcons.sortDown,
                                        color: Colors.grey, size: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.add, color: Colors.grey, size: 12),
                                  Text(
                                    " Álbum",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2.0, bottom: 4.0),
                                    child: Icon(FontAwesomeIcons.sortDown,
                                        color: Colors.grey, size: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: _post,
              
              decoration: InputDecoration(
                border: InputBorder.none,
                labelStyle: TextStyle(color: Colors.grey[400], fontSize: 25),
                labelText: "¿Qué estás pensando?",
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _listTypes(
                            "Crear Sala", Icons.video_call, Colors.purple),
                        _listTypes("Foto/video", Icons.image, Colors.green),
                        _listTypes("Etiquetar amigos", Icons.person_add_alt_1,
                            Colors.blue),
                        _listTypes("Sentimiento/actividad",
                            Icons.emoji_emotions_outlined, Colors.orange),
                        _listTypes("Estoy aquí", Icons.pin_drop, Colors.red),
                        _listTypes("GIF", Icons.gif, Colors.cyan),
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}

Widget _listTypes(String title, IconData icon, MaterialColor color) {
  return ListTile(
    title: Text(title),
    leading: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}

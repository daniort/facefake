
import 'package:facefake/screens/NewPost.dart';
import 'package:facefake/widgets/widgets.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseDatabase realDB = new FirebaseDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Color(0xFF1777F2),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.0),
        ),
        actions: [
          BotonAppBar(
              icon: Icons.search, size: 28.0, onPressed: () => print("buscar")),
          BotonAppBar(
              icon: FontAwesomeIcons.facebookMessenger,
              size: 28.0,
              onPressed: () => print("menssenger")),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewPost();
                }));
              },
              child: CreateNewPostContainer(),
            ),
            BarRooms(),
            Stories(),
            Post()
          ],
        ),
      ),
    );
  }
}

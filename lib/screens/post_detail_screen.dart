import 'package:flutter/material.dart';

import '../models/post.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final post = ModalRoute.of(context)?.settings.arguments as Post;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          post.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.network(
                post.image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                post.subtitle,
                style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            Column(
              children: post.info.map((infoItem) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Color(0xFF4C0099),
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: Text(
                      infoItem,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

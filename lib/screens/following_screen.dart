import 'package:flutter/material.dart';
import '../models/post.dart';
import '../data/dummy_data.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: DUMMY_POSTS.length,
        itemBuilder: (ctx, index) {
          final post = DUMMY_POSTS[index];
          return Card(
            color: Theme.of(context).primaryColor,
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    post.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        post.subtitle,
                        style: const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      ...post.info.map((infoItem) => Text(
                        infoItem,
                        style: const TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

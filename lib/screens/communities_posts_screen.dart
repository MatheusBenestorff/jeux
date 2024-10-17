import 'package:flutter/material.dart';

import '../models/community.dart';
import '../data/dummy_data.dart';
import '../components/post_item.dart';

class CommunitiesPostsScreen extends StatelessWidget {
  const CommunitiesPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final community = ModalRoute
        .of(context)
        ?.settings
        .arguments as Community;

    final communitiesPosts = DUMMY_POSTS.where((post) {
      return post.communities.contains(community.id);
    }).toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(community.title,
        style: TextStyle(color: Colors.white,
        ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: communitiesPosts.length,
          itemBuilder: (ctx, index) {
            return PostItem(communitiesPosts[index]);
          },
        ),
      ),
    );
  }
}
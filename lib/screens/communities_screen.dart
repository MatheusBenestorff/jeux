import 'package:flutter/material.dart';

import '../components/community_item.dart';
import '../data/dummy_data.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 12 / 8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_COMMUNITY.map((cat) {
            return CommunityItem(community: cat,);
          }).toList()
      ),
    );
  }
}
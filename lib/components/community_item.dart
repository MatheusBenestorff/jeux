import 'package:flutter/material.dart';

import '../models/community.dart';
import '../utils/app_routes.dart';

class CommunityItem extends StatelessWidget {
  const CommunityItem({super.key, required this.community});

  final Community community;

  void _selectCommunity(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.COMMUNITIES_POSTS,
      arguments: community,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCommunity(context),
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 250,
        height: 350,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              community.color.withOpacity(0.5),
              community.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                community.imageUrl,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.broken_image,
                  size: 150,
                  color: Colors.grey,
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  community.title,
                  style: TextStyle(
                    color: Colors.white, // Título branco
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final List<String> communities;
  final String title;
  final String image;
  final String subtitle;
  final List<String> info;
  final bool isGame;
  final bool isSeries;
  final bool isComics;
  final bool isManga;

  const Post({
    required this.id,
    required this.communities,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.info,
    required this.isGame,
    required this.isSeries,
    required this.isComics,
    required this.isManga,

});
}
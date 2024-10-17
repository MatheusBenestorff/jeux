import 'dart:ui';
import 'package:flutter/material.dart';

class Community {

  final String id;
  final String title;
  final Color color;
  final dynamic imageUrl;

  const Community({
    required this.id,
    required this.title,
    this.color = const Color(0xFF4C0099),
    required this.imageUrl,
});

}
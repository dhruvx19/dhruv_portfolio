import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppModel {
  String title;
  String? assetPath;
  FaIcon icon;

  Color color;
  Widget? screen;
  String? link;

  AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    required this.icon,
    this.link,
    this.screen,
  }) ;
}
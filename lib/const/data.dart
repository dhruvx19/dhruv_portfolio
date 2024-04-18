// ignore_for_file: prefer_const_constructors

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/app_model.dart';
import 'package:flutter_portfolio/models/device_model.dart';
import 'package:flutter_portfolio/screens/miniprojects/about/about.dart';
import 'package:flutter_portfolio/screens/miniprojects/projects/projects.dart';
import 'package:flutter_portfolio/screens/miniprojects/skills/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<DeviceModel> device = [
  DeviceModel(data: Icons.apple, device: Devices.ios.iPhone13ProMax),
  DeviceModel(data: Icons.tablet_mac, device: Devices.ios.iPad12InchesGen4),
];

List<AppModel> app = [
  AppModel(
      title: 'About Me',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.user, size: 2,),
      screen: About()),
  AppModel(
      title: 'Resume',
      color: Colors.white,
      
      icon: FaIcon(FontAwesomeIcons.file),
      link: 'https://drive.google.com/uc?export=download&id=1hhVqhVjEGSD5mZSwC1npPhVFS4RqVFi5'),
  AppModel(
      title: 'LinkedIn',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.linkedin),
      // assetPath: 'assets/images/linkedin.png',
      link: 'https://www.linkedin.com/in/dhruvbalchandani/',
    ),
  AppModel(
      title: 'Projects',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.android),
      screen: Projects(),
      
      ),
  AppModel(
      title: 'Skills',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.code),
      screen: Skill(),
      ),
  AppModel(
      title: 'Experience',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.star),
      
  ),
  AppModel(
      title: 'Github',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.github),
    
      link: 'https://github.com/dhruvx19'),
  AppModel(
      title: 'Mail',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.envelope),
      
      link: 'mailto:dhruvbalchandani1@gmail.com',),
  AppModel(
      title: 'X',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.twitter, size: 2,),
      
      link: 'https://twitter.com/dhruvx19'),
];

const String linkedIn = "";
const String github = "";
const String twitter = "";
const String resumelink = "";
const String email = "";
String introduction = "";

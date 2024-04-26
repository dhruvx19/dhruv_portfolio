// ignore_for_file: prefer_const_constructors

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/app_model.dart';
import 'package:flutter_portfolio/models/color_model.dart';
import 'package:flutter_portfolio/models/device_model.dart';
import 'package:flutter_portfolio/models/skill_model.dart';
import 'package:flutter_portfolio/screens/miniprojects/about/about.dart';
import 'package:flutter_portfolio/screens/miniprojects/projects/projects.dart';
import 'package:flutter_portfolio/screens/miniprojects/skills/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> device = [
  DeviceModel(data: Icons.apple, device: Devices.ios.iPhone13ProMax),
  DeviceModel(data: Icons.tablet_mac, device: Devices.ios.iPad12InchesGen4),
];

List<AppModel> app = [
  AppModel(
      title: 'About Me',
      color: Colors.white,
      icon: FaIcon(
        FontAwesomeIcons.user,
        size: 2,
      ),
      screen: About()),
  AppModel(
      title: 'Resume',
      color: Colors.white,
      icon: FaIcon(FontAwesomeIcons.file),
      link:
          'https://drive.google.com/uc?export=download&id=1hhVqhVjEGSD5mZSwC1npPhVFS4RqVFi5'),
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
    link: 'mailto:dhruvbalchandani1@gmail.com',
  ),
  AppModel(
      title: 'X',
      color: Colors.white,
      icon: FaIcon(
        FontAwesomeIcons.twitter,
        size: 2,
      ),
      link: 'https://twitter.com/dhruvx19'),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/stacked-waves-haikei.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/stacked-waves-haikei.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/stacked-waves-haikei.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/stacked-waves-haikei.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/stacked-waves-haikei.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

const String linkedIn = "https://www.linkedin.com/in/dhruvbalchandani/";
const String github = "";
const String twitter = "";
const String resumelink = "";
const String email = "";
String introduction = "";
const String quote =
    "\"Don\'t run after success run after perfection success will follow.\"";
const String quote2 = "\"Study not to be successful, but to be capable!\"";
const String quote3 =
    "\"No matter how much you try in life, something or the other will slip away. So, let's enjoy this moment right here, right now.\"";

const String quote5 =
    "\" I wanna fly, I wanna run, I wanna fall. Just I don't never wanna quit\"";
const String quote6 =
    "\"It is saddening if your buddy fails in exam, but most saddening is when he/she tops the exam\"";
const String quote7 = "\"All is Well\"";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "BLoC",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "CI/CD",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "GetX",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Firestore",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "English", colorS: Colors.orange),
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "Sindhi", colorS: Colors.orange),
];

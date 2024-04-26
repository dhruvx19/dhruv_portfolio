// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_portfolio/screens/phone_home_page.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'About Me',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              instance.changePhoneScreen(
                          const PhoneHomeScreen(),
                          true,
                        );
            },
          ),
        ],
      ),
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/dhruv.png'),
                ),
                Text(
                  'My name is Dhruv Balchandani. I was born and brought up in the holy city of Varanasi. I am currently staying in Ghaziabad and pursuing a bachelor of technology specialising in information technology from the KET Group of Institutions in Ghaziabad I developed an interest in crafting applications in Flutter through my active participation in technical clubs and events, which gave me insights into the language.Currently, I am building a robust Chat application to showcase my technical skills.I love learning new technologies and am currently exploring NodeJs so as to integrate backends into my apps in the future.My skills include multitasking, problem-solving, and time management.',
                  style: TextStyle(fontSize: 22),
                ),
                Text(introduction),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

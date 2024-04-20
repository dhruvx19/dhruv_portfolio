// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_portfolio/screens/phone_home_page.dart';
import 'package:flutter_portfolio/screens/phone_screen_wrapper.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Skills',
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
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.white,child: Image.asset('assets/images/download.png')),
                  Container(color: Colors.white,child: Image.asset('assets/images/firebase.png')),
                  
                ],
              ),
            ),
          ),
      ),
    ),
    );
  }
}

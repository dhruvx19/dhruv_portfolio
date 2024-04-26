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
      body: SingleChildScrollView(
        child: Center(
          
          child: Container(
            padding: const EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      skills.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeff0e0),
                            border: Border.all(color: skills[index].colorS)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              skills[index].skillName,
                              style: TextStyle(fontSize:14 , fontWeight: FontWeight.w500)
                            ),
                            // skills[index].iconPath != null
                            //     ? Padding(
                            //         padding: const EdgeInsets.only(left: 10),
                            //         child: SvgPicture.asset(
                            //           "assets/icons/flutter.svg",
                            //           height: 20,
                            //         ))
                            //     : Container()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Languages",
                  style: TextStyle(fontSize:25, fontWeight: FontWeight.bold )
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      languages.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffeff0e0),
                            border: Border.all(color: languages[index].colorS)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              languages[index].skillName,
                              style: TextStyle(fontSize:14 ),
                            ),
                            languages[index].iconPath != null
                                ? const Icon(Icons.flutter_dash)
                                : Container()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
  


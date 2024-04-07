// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: [
                Colors.white,
                Colors.grey,
                Colors.black
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        ),
        SvgPicture.asset(
          "assets/images/one2.svg",
          height: size.height,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DeviceFrame(
              device: Devices.ios.iPhone13,
              isFrameVisible: true,
              orientation: Orientation.portrait,
              screen: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 6),
                  colors: [Colors.grey, Colors.black, Colors.white],
                )),
                child: Center(
                    child: Text(
                  'Hello',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

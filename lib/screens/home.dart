// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
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
        Positioned.fill(
          child: SvgPicture.asset(
            "assets/images/one2.svg",
            fit: BoxFit.cover,
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height - 100,
                child: Consumer<CurrentState>(
                  builder: (context,_,__) {
                    return DeviceFrame(
                      device: currentState.currentDevice,
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
                    );
                  }
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                device.length,
                (index) => CustomButton(
                  height: 38,
                  width: 38,
                  borderRadius: 100,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    currentState.changeSelectedDevice(device[index].device);
                  },
                  animate: true,
                  isThreeD: true,
                  shadowColor: Colors.white,
                  child: Center(
                    child: Icon(
                      device[index].data,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ])
      ]),
    );
  }
}

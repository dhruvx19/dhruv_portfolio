// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_portfolio/providers/theme_providers.dart';
import 'package:flutter_portfolio/screens/phone_screen_wrapper.dart';
import 'package:flutter_portfolio/widgets/froster_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentQuote = quote;

  int _quoteIndex = 0;
  late List<String> quotes;
  Timer? _timer;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    quotes = [quote, quote2, quote3, quote5, quote6, quote7];
    generateQuote();
    _timer = Timer.periodic(Duration(seconds: 7), (timer) {
      generateQuote();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void generateQuote() {
    setState(() {
      currentQuote = quotes[_quoteIndex];
      _quoteIndex = (_quoteIndex + 1) % quotes.length;
    });
  }

  // void changeQuote() {
  //   setState(() {
  //     _quoteIndex = (_quoteIndex + 1) % quotes.length;
  //     currentQuote = quotes[_quoteIndex];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);

    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    bool phone = false;
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
            "assets/images/stacked-waves-haikei.svg",
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
              Container(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.01)
                      ..rotateY(-0.06),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: FrostedContainer(
                        childW: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.01)
                              ..rotateY(-0.06),
                            alignment: FractionalOffset.center,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Dhruv Balchandani\n',
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '           Flutter Developer',
                                              style: TextStyle(
                                                fontSize:
                                                    15, // Set a smaller font size for "Flutter Developer"
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              recognizer:
                                                  null, // Optional, set to null since there's no onTap handler
                                              children: [
                                                WidgetSpan(
                                                  alignment:
                                                      PlaceholderAlignment
                                                          .middle,
                                                  child: SizedBox(
                                                      width:
                                                          10), // Adjust this width as needed for spacing
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).animate().fadeIn(
                                          delay: .8.seconds,
                                          duration: .7.seconds),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        height: 395,
                        width: 247.5,
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.009999)
                      ..rotateY(-0.07),
                    alignment: Alignment.topCenter,
                    child: FrostedContainer(
                      //  onPressed: () {
                      //   currentState.launchInBrowser(linkedIn);
                      //  },
                      childW: Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.linkedin),
                                iconSize: 60,
                                onPressed: () {
                                  currentState.launchInBrowser(linkedIn);
                                },
                              ),
                              // Image.asset(
                              //   "",
                              //   width:
                              //       50 ,
                              //   height:
                              //       50 ,
                              // ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  currentState.launchInBrowser(linkedIn);
                                },
                                child: Flexible(
                                    child: AutoSizeText(
                                  "Let's connect!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxFontSize: 28,
                                  minFontSize: 15,
                                )),
                              ),
                            ],
                          )
                              .animate()
                              .fadeIn(delay: 1.seconds, duration: .7.seconds),
                        ),
                      ),
                      height: 175.5,
                      width: 245,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height - 100,
                child: Consumer<CurrentState>(builder: (context, _, __) {
                  return DeviceFrame(
                    device: currentState.currentDevice,
                    isFrameVisible: true,
                    orientation: Orientation.portrait,
                    screen: Container(
                        child:
                            ScreenWrapper(childG: currentState.currentScreen)),
                  );
                }),
              ),
              Container(),
              Column(
                children: [
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.01)
                      ..rotateY(0.06),
                    alignment: Alignment.bottomCenter,
                    child: FrostedContainer(
                      height: 395,
                      width: 247.5,
                      childW: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              ...List.generate(
                                colorPalette.length,
                                (index) => Consumer<CurrentState>(
                                    builder: (context, _, __) {
                                  return CustomButton(
                                    margin: const EdgeInsets.all(10),
                                    pressed: currentState.selectedColor == index
                                        ? Pressed.pressed
                                        : Pressed.notPressed,
                                    animate: true,
                                    borderRadius: 100,
                                    shadowColor: Colors.blueGrey[50],
                                    isThreeD: true,
                                    backgroundColor: colorPalette[index].color,
                                    width: 50,
                                    height: 50,
                                    onPressed: () {
                                      currentState.changeGradient(index);
                                    },
                                  );
                                }),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.00999)
                      ..rotateY(0.06),
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 0, bottom: 10),
                      child: FrostedContainer(
                        childW: Center(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            child: Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  currentQuote,
                                  style: TextStyle(
                                      // fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 35,
                                  minFontSize: 15,
                                  maxLines: 3,
                                ),
                                Center(
                                  child: IconButton(
                                    onPressed: () {
                                      generateQuote(); // Call the function to change the quote
                                    },
                                    icon: FaIcon(FontAwesomeIcons
                                        .arrowsRotate), // Replace 'add' with the desired icon
                                  ),
                                ),

                                // Align(
                                //     alignment: Alignment.bottomRight,
                                //     child: AutoSizeText(
                                //       '-Baba Ranchhoddas',
                                //       style: TextStyle(
                                //           // fontSize: 12,
                                //           color: Colors.white.withOpacity(0.6),
                                //           fontWeight: FontWeight.w400),
                                //       maxFontSize: 12,
                                //       minFontSize: 6,
                                //       maxLines: 1,
                                //     )),
                              ],
                            )),
                          ),
                        )
                            .animate()
                            .fadeIn(delay: 1.seconds, duration: .7.seconds),
                        height: 175.5,
                        width: 245,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                device.length,
                (index) => Selector<CurrentState, DeviceInfo>(
                    selector: (context, provider) => provider.currentDevice,
                    builder: (context, _, __) {
                      return CustomButton(
                        height: 38,
                        width: 38,
                        borderRadius: 100,
                        backgroundColor: Colors.black,
                        onPressed: () {
                          currentState
                              .changeSelectedDevice(device[index].device);
                        },
                        animate: true,
                        pressed:
                            currentState.currentDevice == device[index].device
                                ? Pressed.pressed
                                : Pressed.notPressed,
                        isThreeD: true,
                        shadowColor: Colors.white,
                        child: Center(
                          child: Icon(
                            device[index].data,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ])
      ]),
    );
  }
}

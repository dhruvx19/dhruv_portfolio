import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: GridView.count(
        crossAxisCount: 3, // 4 icons per row
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 0.8,
        children: [
          // SizedBox(
          //   height: 30,
          // ),
          ...List.generate(
              app.length,
              (index) => Container(
                    margin: EdgeInsets.only(
                      right: 10,
                      left: 10,
                      top: 60,
                    ),
                    child: Column(
                      children: [
                        CustomButton(
                          margin: EdgeInsets.only(bottom: 5),
                          borderRadius: 8,
                          onPressed: () {
                            if (app[index].link != null) {
                              currentState.launchInBrowser(app[index].link!);
                            } else if (app[index].screen != null) {
                              currentState.changePhoneScreen(
                                  app[index].screen!, false,
                                  titleL: app[index].title);
                            }
                          },
                          width: 68,
                          height: 75,
                          asset: app[index].assetPath != null
                              ? ButtonAsset(app[index].assetPath!,
                                  width: 25, height: 25)
                              : null,
                          backgroundColor: app[index].color,
                          child: app[index].assetPath == null
                              ? Center(
                                  child: FaIcon(
                                    app[index].icon.icon,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                )
                              : null,
                        ),
                        SizedBox(
                          width: 80,
                          child: Center(
                            child: Text(
                              app[index].title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 900,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Made with Flutter',style: TextStyle(color: Colors.white),),
                      Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                    ],
                  )
      ],
      ),
    );
  }
}

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/data.dart';
import 'package:flutter_portfolio/screens/phone_home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier {
  String selectedCloud = "assets/images/stacked-waves-haikei.svg";

  Gradient bgGradient = const LinearGradient(
    begin: Alignment.topLeft,
    // end: Alignment(0, -0.4),
    colors: [Colors.blue, Colors.black45],
  );
  int selectedColor = 1;
  DeviceInfo currentDevice = Devices.ios.iPhone13ProMax;

  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }

  String? title;
  bool isMainScreen = true;

  Widget currentScreen = PhoneHomeScreen();

  Future<void> launchInBrowser(String link) async {
    Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print('Could not launch $url');
    }
  }

  void changeGradient(int index) {
    selectedColor = index;
    bgGradient = colorPalette[index].gradient;
    selectedCloud = colorPalette[index].svgPath;
    notifyListeners();
  }

  void changePhoneScreen(Widget change, bool isMainScreen, {String? titleL}) {
    // curent
    title = titleL;
    currentScreen = change;
    isMainScreen = isMainScreen;
    notifyListeners();
  }
}

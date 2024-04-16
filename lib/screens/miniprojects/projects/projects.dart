// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_portfolio/screens/phone_home_page.dart';
import 'package:flutter_portfolio/widgets/project_container.dart';
import 'package:provider/provider.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
  // _EcommerceAppState createState() => _EcommerceAppState();
}

class _ProjectsState extends State<Projects> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Projects',
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
        child: Column(children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is what I have Built using Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.blue,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          ),
          SizedBox(height: 20,),
          ProjectContainer(heading: 'Chat App', tech: 'Dart, Flutter, Firebase, Android Studio', description: 'Under Development', url: '',),
          SizedBox(
            height: 20,
          ),
          ProjectContainer(heading: 'Ecommerce App', tech: 'Dart, Flutter, Firebase, Android Studio', description: 'I\'m leading the creation of a powerful Flutter e-commerce app, using BLoC for managing different parts of the app smoothly. I\'ve added Firebase to handle user sign-in securely and manage user data efficiently. The app allows users to easily browse, search, and buy products with a user-friendly interface, making shopping enjoyable and straightforward.', url: 'https://github.com/dhruvx19/ecommerce_app',),
          SizedBox(
            height: 20,
          ),
          ProjectContainer(heading: 'Image Generator App', tech: 'Dart, Flutter, Imagine API, Android Studio', description: 'Created a cutting-edge Android app using the Imagine API from MidJourney for discovering images dynamically. Engage users with a simple interface where they input prompts to instantly generate custom images using advanced technology. Implement robust state management using the BLoC pattern to ensure smooth and responsive user interaction, enhancing overall user immersion and experience.',url: 'https://github.com/dhruvx19/image_generator_app',),
          SizedBox(
            height: 20,
          ),
          ProjectContainer(heading: 'Wallpaper App', tech: 'Dart, Flutter, Unsplash API, Android Studio', description: 'I\'ve created a versatile Android and iOS app that taps into a rich library of high-quality images using the Unsplash API. The app features efficient state management through the BLoC pattern, ensuring smooth loading and exploration of wallpapers with seamless previews. Users can enjoy a straightforward interface for easy selection and setting of wallpapers, making the process intuitive and enjoyable.', url: 'https://github.com/dhruvx19/wallpaper_app',),
          SizedBox(
            height: 20,
          ),
          ProjectContainer(heading: 'Weather App', tech: 'Dart, Flutter, Weather API, Firebase, Android Studio', description: 'I\'ve implemented the BLoC pattern in an app for efficient state management, keeping business logic separate from UI components. The app fetches real-time weather data from the OpenWeather API, ensuring accuracy and reliability. It presents weather information in a clear, intuitive design with details on current conditions, forecasts, and location search functionality for a seamless user experience.', url: 'https://github.com/dhruvx19/weather_bloc',),
          SizedBox(
            height: 20,
          ),
          ProjectContainer(heading: 'TODO App', tech: 'Dart, Flutter, hive, Android Studio', description: 'I\'ve built a cross-platform Android and iOS app that enables CRUD operations (Create, Read, Update, Delete) for tasks. Using Hive, I implemented efficient local data management directly within the Flutter application. The app offers a seamless user experience with intuitive gestures and smooth interactions, making task management effortless and consistent across both iOS and Android platforms.', url: 'https://github.com/dhruvx19/ChronoSync_app',),
        ]),
      ),
    );
  }
}

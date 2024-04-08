import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/current_state.dart';
import 'package:flutter_portfolio/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

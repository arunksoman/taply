import 'package:flutter/material.dart';
// import 'package:taply/screens/login_screen.dart';
import 'package:taply/screens/short_flip_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginScreen(),
      home: ShortFlipContent(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      darkTheme: ThemeData.dark(), // standard dark theme
      themeMode: ThemeMode.system, // device controls theme
    );
  }
}

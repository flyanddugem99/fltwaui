import 'package:flutter/material.dart';
import 'package:flutterwaui/pages/HomePage.dart';
import 'package:flutterwaui/pages/SettingsPage.dart';
import 'package:flutterwaui/pages/ChatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        // To Transparent the bottom sheet on chat page you will see.
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "SettingsPage": (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}

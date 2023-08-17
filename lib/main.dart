import 'package:flutter/material.dart';
import 'package:portfolio/models/my_theme.dart';
import 'package:portfolio/pages/events_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/login_page.dart';
import 'package:portfolio/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Events',
      theme: myTheme,
      home: const LoginPage(),
      routes: {
        "home": (context) => const LoginPage(),
        "slider_page": (context) => const EventsPage(),
        "profile_page": (context) => const ProfilePage(),
        "home_page": (context) => const HomePage()
      },
    );
  }
}

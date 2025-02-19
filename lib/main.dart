import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_pr/counter_screen.dart';
import 'package:provider_pr/practiceGarauHaita/pr_home_screen.dart';
import 'package:provider_pr/screens/home_screen.dart';

void main() {
  //ProviderScope is a wrapper provided by Riverpod
  //that stores and manages all the providers in your app. It acts as a
  //container where all state providers are stored and
  //allows them to be accessed throughout the app.
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrHomeScreen(),
    );
  }
}

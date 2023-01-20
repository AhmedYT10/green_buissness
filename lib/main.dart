import 'package:green_buissness/Employing%20a%20worker.dart';
import 'package:green_buissness/Services.dart';
import 'package:green_buissness/buissness_resources.dart';
import 'package:green_buissness/find_a_ job.dart';
import 'package:flutter/material.dart';
import 'package:green_buissness/homepage.dart';
import 'package:green_buissness/login.dart';
import 'package:green_buissness/the%20services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: IntroPage(),

      //  home: const IntroPage(),

      routes:
      {
        'home' : (context) =>  IntroPage(),
        'login' : (context) => LoginPage(),
        'Job' : (context) => Find_a_job(),
        'Start' : (context) => services(),
        'Services': (context) => our_services(),
        'Buissness': (context) => apply(),
        'Worker' : (context) => Employing_a_woker(),
      },
    );
  }
}
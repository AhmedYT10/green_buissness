import 'package:green_business/home_page_main.dart';
import 'package:green_business/Store/constants.dart';
import 'package:green_business/ads.dart';
import 'package:flutter/material.dart';
import 'package:green_business/sigup.dart';
import 'package:green_business/login.dart';
import 'package:green_business/onboding_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

      home: const OnboardingScreen(),

      routes:
      {
        'home' : (context) =>  SignupPage(),
        'login' : (context) => LoginPage(),
        'marketing' : (context) => Order(),
        'Start' : (context) => HomePage(),
      },
    );
  }
}
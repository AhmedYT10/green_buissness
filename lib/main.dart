import 'package:green_buissness/Employing%20a%20worker.dart';
import 'package:green_buissness/Prepare_a_workplace.dart';
import 'package:green_buissness/Services.dart';
import 'package:green_buissness/Store/constants.dart';
import 'package:green_buissness/ads.dart';
import 'package:green_buissness/buissness_resources.dart';
import 'package:green_buissness/find_a_ job.dart';
import 'package:flutter/material.dart';
import 'package:green_buissness/sigup.dart';
import 'package:green_buissness/login.dart';
import 'package:green_buissness/onboding_screen.dart';
import 'package:green_buissness/the_services.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        'Job' : (context) => Find_a_job(),
        'Start' : (context) => services(),
        'Buissness': (context) => apply(),
        'Worker' : (context) => Employing_a_worker(),
        'our_services' : (context) => TheServices(),
        'Prepare' : (context) => prepare(),
        'marketing' : (context) => Order(),
      },
    );
  }
}
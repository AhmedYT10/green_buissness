import 'package:flutter/material.dart';
import 'package:green_business/Store/screens/home/components/body.dart';
import 'package:green_business/home_page_main.dart';


class HomeScreenStore extends StatelessWidget {
  const HomeScreenStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back , color: Colors.black),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
        ),
        title: Text(
          "Store",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Body(),
    );
  }
}

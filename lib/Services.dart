import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_buissness/Drawer/drawer.dart';
import 'package:green_buissness/Drawer/drawer_list.dart';
import 'package:green_buissness/Drawer/my_drawer_header.dart';
import 'package:green_buissness/Drawer/profile.dart';
import 'package:green_buissness/buissness_resources.dart';
import 'package:url_launcher/url_launcher_string.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          backgroundColor: Colors.grey,
          actions: [
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushNamed("login");
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        drawer: Drawer(child: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(
              children: [
                Buildheader(context),
                Buildmenuitems(context)
              ],
            ),
          ),
        ),),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  Image.asset("assets/logo.png", height: 350, width: 400,),

                  const SizedBox(height: 40),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("our_services"),
                          child: Container(
                            height: 60.0,
                            width: 230.0,
                            decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(
                                offset: Offset(0.0, 20.0),
                                blurRadius: 30.0,
                                color: Colors.black12,
                              )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 70.0,
                                  width: 190.0,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 12.0),
                                  child: Text("Services",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .button!
                                        .copyWith(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(75.0),
                                      topLeft: Radius.circular(75.0),
                                      bottomRight: Radius.circular(200.0),
                                    ),
                                  ),
                                ),
                                Image.asset("assets/services.png", height: 30,
                                  width: 30,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Buildmenuitems(BuildContext context) =>
      Column(
        children: [


          ListTile(
            leading: Icon(Icons.person_outline_rounded),
            title: Text("Profile"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text("Support"),
            onTap: () {
              launchUrlString(
                  "mailto:techno.mobilecom32023@gmail.com?subject= Support");
            },
          ), ListTile(
            leading: Icon(Icons.contact_support_outlined),
            title: Text("Send feedback"),
            onTap: () {
              launchUrlString(
                  "mailto:techno.mobilecom32023@gmail.com?subject=Send feedback");
            },
          ), ListTile(
            leading: Icon(Icons.exit_to_app_rounded),
            title: Text("SignOut"),
            onTap: () async  {
             await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamed("login");
            },
          ),


        ],


      );


  Widget Buildheader(BuildContext context) =>
      Container(
        color: Colors.grey[500],
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20.0),
        height: 200,
        child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Text(
  "Rapid Tech",
  style: TextStyle(color: Colors.white, fontSize: 20),
  ),
  Text(
  "${FirebaseAuth.instance.currentUser!.email}",
  style: TextStyle(
  color: Colors.grey[300],
  fontSize: 14,
  ),
  ),
  ],
        ),
      );


}
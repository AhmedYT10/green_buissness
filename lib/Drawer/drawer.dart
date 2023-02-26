import 'package:flutter/material.dart';
import 'package:green_buissness/Drawer/privacy_policy.dart';
import 'package:green_buissness/Drawer/profile.dart';
import 'package:green_buissness/Drawer/send_feedback.dart';
import 'package:green_buissness/Drawer/settings.dart';
import 'package:green_buissness/Services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'contacts.dart';
import 'dashboard.dart';
import 'events.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
import 'notifications.dart';

class MYDrawer extends StatefulWidget {
  const MYDrawer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MYDrawerState createState() => _MYDrawerState();
}

class _MYDrawerState extends State<MYDrawer> {
  var currentPage = DrawerSections;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.Profile) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
    } else if (currentPage == DrawerSections.Support) {
      launchUrlString("mailto:techno.mobilecom32023@gmail.com?subject= Getting help");
    }  else if (currentPage == DrawerSections.send_feedback) {
    }
    return Scaffold(
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Profile", Icons.dashboard_outlined,
              currentPage == DrawerSections.Profile ? true : false),
          menuItem(2, "Support", Icons.people_alt_outlined,
              currentPage == DrawerSections.Support ? true : false),
          menuItem(3, "Send FeedBack", Icons.notes,
              currentPage == DrawerSections.send_feedback ? true : false),
          const Divider(),
          menuItem(4, "SignOut", Icons.settings_outlined,
              currentPage == DrawerSections.sign_out ? true : false),
          const Divider(),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.Profile as Type;
            } else if (id == 2) {
              currentPage = DrawerSections.Support as Type;
            } else if (id == 3) {
              currentPage = DrawerSections.send_feedback as Type;
            } else if (id == 4) {
              currentPage = DrawerSections.sign_out as Type;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  send_feedback,
  Profile,
  Support,
  sign_out,
}
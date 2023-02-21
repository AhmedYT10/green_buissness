import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String imageurl = "";
  void pickuploadimage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 75,
    );
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("profile")
        // ignore: prefer_interpolation_to_compose_strings
        .child("/" + image!.name);
    await ref.putFile(File(image.path));
    ref.getDownloadURL().then((value) {
      setState(() {
        imageurl = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                pickuploadimage();
              },
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: CircleAvatar(
                    radius: 80,
                    child: imageurl == ""
                        ? const Icon(Icons.person)
                        : Image.network(imageurl)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

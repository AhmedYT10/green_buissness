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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed("Start");
              }, child: Text("Update"))



          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  pickuploadimage();
                }, // ignore: avoid_unnecessary_containers
                child: Container(
                  width: 400,
                  height: 300,
                  child: imageurl == ""
                      ? const Icon(Icons.person)
                      : Image.network(imageurl),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
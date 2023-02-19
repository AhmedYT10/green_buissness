import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  TextEditingController email = TextEditingController();

  @override
  State<Welcome> createState() => _WelcomeState();

   Welcome({
    Key? key,
    required this.email


  }) : super(key : key);



}
class _WelcomeState extends State<Welcome> {

  final name =TextEditingController();
  final age =TextEditingController();
  final GlobalKey<FormState>formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Welcome to Green Business"),
              Container(
                height: 60,
                width: 350,
                child: TextFormField(
                  controller: name,
                  keyboardType:TextInputType.name ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Name",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),

                  ),
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Enter your name";
                    }
                  },
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 60,
                width: 350,
                child: TextFormField(
                  controller: age,
                  keyboardType:TextInputType.text ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Age",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),

                  ),
                  validator: (value){
                    if(value!.isNotEmpty){
                      return null;
                    }else{
                      return "Enter your age";
                    }
                  },
                ),
              ),

              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                onPressed: () async {
                  final valid = formKey.currentState!.validate();
                  if(valid){
                    Map<String,dynamic> dataBase={
                      "field1 ":name.text,
                      "field2 ":age.text,
                      "field3": widget.email.text,
                    };
                    FirebaseFirestore.instance.collection("Sign up").add(dataBase);
                    name.clear();
                    age.clear();
                    widget.email.clear();
                  }
                },
                color: Colors.green.shade400,
                child: Text("Register",
                    style: TextStyle(color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ],


          ),
        ),
      ),


    );
  }
}

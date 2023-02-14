import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {

  final name = TextEditingController();
  final age = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
            child: Column(
              children:[

                const SizedBox(height: 10),

                Image.asset("assets/logo.png",
                width: 250,
                height: 175,),

                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sign up ",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,


                      ),),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: name,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Name" , labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(

                    controller: age,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Age" , labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
               const  SizedBox( height:10),

                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Email" , labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Password" , labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: () => Navigator.of(context).pushNamed("login"),
                  child: const Text("Already Have an Account?" ,
                    style: TextStyle(color: Colors.black , fontStyle: FontStyle.italic),
                  ),
                ),

                const SizedBox(height: 30),

                MaterialButton(
                  onPressed: () async {
                    Map<String,dynamic> dataBase={
                      "field1 ":name.text,
                      "field2 ":age.text,
                      "field3 ":email.text,

                    };
                    Navigator.of(context).pushNamed("Start");
                    FirebaseFirestore.instance.collection("sign up").add(dataBase);
                    try {
                      UserCredential userCredential = await  FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,

                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        AwesomeDialog(context: context, title: "Error" ,body: Text("Password is weak"),);
                      } else if (e.code == 'email-already-in-use') {
                        AwesomeDialog(context: context, title: "Error" ,body: Text("The account already exists for that email."),);
                      }
                    } catch (e) {
                      print(e);
                    }

                  },
                  child: Container(
                    height: 60.0,
                    width: 230.0,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(
                        offset: Offset(0.0 , 20.0),
                        blurRadius: 30.0,
                        color: Colors.black12,
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Row(
                      children: <Widget> [
                        Container(
                          height: 70.0,
                          width: 190.0,
                          padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 12.0),
                          child: Text("Get Started" ,
                            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
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
                        Image.asset("assets/home.png" , height: 30 , width: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
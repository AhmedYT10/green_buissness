import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                width:250,
                height:175),

                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sign in ",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,


                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
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
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: "Password" , hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: () => Navigator.of(context).pushNamed("home"),
                  child: const Text("Don't Have an Account?" ,
                    style: TextStyle(color: Colors.black , fontStyle: FontStyle.italic),
                  ),
                ),

                const SizedBox(height: 30),

                MaterialButton(
                  onPressed: ()async{
                    Navigator.of(context).pushNamed("Start");
                    try {
                      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email.text,
                          password: password.text
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
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
                            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
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
                        Image.asset("assets/home.png" , height: 30, width: 30,),
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

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_buissness/Services.dart';
import 'package:green_buissness/login.dart';
import 'package:green_buissness/signup%20welcome.dart';
import 'package:validators/validators.dart';


class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState>formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController textEditingController = TextEditingController();
 TextEditingController textEditingController2 = TextEditingController();

  bool isEmailCorrect = false;

  bool _isVisible = false;

  // ignore: prefer_final_fields
  bool _isPassword8char = false;

  // ignore: prefer_final_fields
  bool _hasOneNumber = false;

  onPasswordChanged(password) {
    setState(() {
      final numbericRegex = RegExp(r'[0-9]');
      _isPassword8char = false;
      if (password.length >= 8) {
        _isPassword8char = true;
      }

      _hasOneNumber = false;
      if (numbericRegex.hasMatch(password)) {
        _hasOneNumber = true;
      }
    });
  }


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  signup() async {
    var formvalid = formKey.currentState!;

    if (formvalid.validate() && _hasOneNumber && _isPassword8char &&
        isEmailCorrect == true) {
      formvalid.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: textEditingController.text,
          password: textEditingController2.text,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          AwesomeDialog(
              context: context,title: "Error",body: Text("The account already exists for that email",style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),))..show();
        }
      } catch (e) {
        print(e);
      }
    }else{
      return null;

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child: Container(
                child: Column(
                  children:[

                    const SizedBox(height: 10),

                    Image.asset("assets/logo.png" , width: 250 , height: 175),

                    const SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Sign up ",style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                    ),

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

                    const SizedBox(height: 10),

                    Container(
                      height: 60,
                      width: 350,
                      child: TextFormField(
                        controller: textEditingController,
                        showCursor: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (val) {
                          setState(() {
                            isEmailCorrect = isEmail(val);
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey.shade500,
                          ),
                          suffixIcon: isEmailCorrect == false
                              ? const Icon(Icons.close_sharp, color: Colors.red)
                              : const Icon(Icons.done, color: Colors.green),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: isEmailCorrect == false
                                ? BorderSide(color: Colors.red.shade200, width: 2.0)
                                : BorderSide(color: Colors.green.shade200, width: 2.0),
                          ),
                          labelText: "Email",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 60,
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: textEditingController2,
                        onChanged: (password) => onPasswordChanged(password),
                        obscureText: !_isVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? const Icon(Icons.visibility, color: Colors.black)
                                : Icon(Icons.visibility_off, color: Colors.grey.shade600),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: "Password",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: _isPassword8char ? Colors.green : Colors.transparent,
                              border: _isPassword8char
                                  ? Border.all(color: Colors.transparent)
                                  : Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: _isPassword8char == false
                                ? const Icon(Icons.close_sharp, color: Colors.white, size: 15.0)
                                : const Icon(Icons.check, color: Colors.white, size: 15.0),
                          ),
                          const SizedBox(width: 10),
                          const Text("Containes at Least 8 Characters"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: _hasOneNumber ? Colors.green : Colors.transparent,
                              border: _hasOneNumber
                                  ? Border.all(color: Colors.transparent)
                                  : Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: _hasOneNumber == false
                                ? const Icon(Icons.close_sharp, color: Colors.white, size: 15.0)
                                : const Icon(Icons.check, color: Colors.white, size: 15.0),
                          ),
                          const SizedBox(width: 10),
                          const Text("Containes at Least 1 Number"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an Account?"),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                            child: const Text("Login Now"),
                        ),
                      ],
                    ),

                    MaterialButton(
                      height: 40.0,
                      minWidth: double.infinity,
                      onPressed: () async {
                        UserCredential reponse = await signup();
                        if(reponse != null){

                          Navigator.of(context).pushReplacementNamed("Start");

                        }


                      },

                      color:
                      isEmailCorrect && _hasOneNumber && _isPassword8char == false
                          ? const Color(0xFF707070)
                          : Colors.green.shade400,
                      child: Text("Register",
                          style: TextStyle(color: Colors.white)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



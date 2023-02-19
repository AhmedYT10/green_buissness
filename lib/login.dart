import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_buissness/Services.dart';
import 'package:green_buissness/homepage.dart';
import 'package:validators/validators.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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

  dynamic snackBar = SnackBar(
    duration: const Duration(milliseconds: 1500),
    content: const Text("Your Login is Completed"),
    action: SnackBarAction(label: "Got it", onPressed: () {}),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Center(
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

              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: textEditingController,
                showCursor: true,
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
              const SizedBox(height: 30.0),
              TextField(
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
                  hintText: "Password",
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                ),
              ),
              const SizedBox(height: 30),
              Row(
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
              const SizedBox(height: 10),
              Row(
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
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account"),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
                  }, child: const Text("Signup Now")),
                ],
              ),

              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                onPressed: ()async {
                  if(isEmailCorrect && _isPassword8char && _hasOneNumber == true) {
                    try {
                       await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: textEditingController.text,
                          password: textEditingController2.text,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => services()));

                  }else{
                    return null;
                  }
                },
                color:
                isEmailCorrect && _hasOneNumber && _isPassword8char == false
                    ? const Color(0xFF707070)
                    : Colors.green.shade400,
                child: Text("Create Your Account",
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

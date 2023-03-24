import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:validators/validators.dart';
import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}
class _ResetpasswordState extends State<Resetpassword> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmailCorrect = false;
  final GlobalKey<FormState>formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  resetpassword() async {
    try {
      var  reset = await FirebaseAuth.instance.sendPasswordResetEmail(email: textEditingController.text
      );
      AwesomeDialog(context: context,title: "Arrived",body:Text("Reset password email sent"))..show();
      return reset;
    }on FirebaseAuthException catch(e){
      AwesomeDialog(context: context,title: "Error",body: Text(e.message.toString()))..show();
    }catch(e){
      print(e);
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    const SizedBox(height: 10),

                    Image.asset("Assets/Images/appLogo.jpeg", width: 250, height: 175),

                    const SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Reset Password", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    TextFormField(
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
                            ? const Icon(
                            Icons.close_sharp, color: Colors.red)
                            : const Icon(Icons.done, color: Colors.green),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: isEmailCorrect == false
                              ? BorderSide(
                              color: Colors.red.shade200, width: 2.0)
                              : BorderSide(
                              color: Colors.green.shade200, width: 2.0),
                        ),
                        labelText: "Email",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                      ),
                        validator: (value) {
                          if (isEmailCorrect == false) {
                            return "Enter a valid email";
                          } else {
                            return null;
                          }
                        }
                    ),

                    const SizedBox(height: 35),

                    MaterialButton(
                      onPressed: () async {
                        final isValidForm = formKey.currentState!.validate();
                        if(isValidForm) {
                          await resetpassword();
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
                              child: Text("Reset Password",
                                style:
                                Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
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
                            Image.asset("Assets/Images/password.png" , height: 30 , width: 30),
                          ],
                        ),
                      ),
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
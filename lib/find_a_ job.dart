import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Find_a_job extends StatelessWidget {
   Find_a_job({super.key});
  final formKey = GlobalKey<FormState>();
  final job =TextEditingController();
  final phone =TextEditingController();
  final email =TextEditingController();
  final adress =TextEditingController();
  final experience =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key:formKey,
            child: ListView(
              children: [
                const Padding(padding: const EdgeInsets.all(8.0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Fill the form",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffcd6f18),
                    ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Container(
                  height: 45,
                  child: TextFormField(
                      controller: job,
                      keyboardType:TextInputType.text ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText:  "Job"
                      ),
                    validator: (value){
                      if(value == null){
                        return "Enter your name";
                      }else{
                        return null;
                      }
                    },
                    ),
                  ),


                const SizedBox(height: 10),

                Container(
                  height :45,
                  child: TextFormField(
                    controller: phone,
                    keyboardType:TextInputType.phone ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Tele.No",
                    ),
                    validator: (value){
                      if(value == null){
                        return "Enter your Tele.No ";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  height: 45,
                  child: TextFormField(
                    controller: email,
                    keyboardType:TextInputType.emailAddress ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Email",
                    ),
                    validator: (email) {
                      if(email != null){
                        !EmailValidator.validate(email)
                        ? "Enter A Valid Email" : null;
                      }
                    },
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  height: 45,
                  child: TextFormField(
                    controller: adress,
                    keyboardType:TextInputType.streetAddress ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Address",
                    ),
                    validator: (value){
                      if(value == null){
                        return "Enter your Address";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  height: 45,
                  child: TextFormField(
                    controller: experience,
                    keyboardType:TextInputType.text ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Experience",
                    ),
                    validator: (value){
                      if(value == null){
                        return "Enter your Experience";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                const SizedBox(height: 30),

                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    height: 50.0,
                    width: 200.0,
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
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 12.0),
                          child: Text("Upload C.V" ,
                            style: Theme.of(context).textTheme.button!.apply(color: Colors.black),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(95.0),
                              topLeft: Radius.circular(95.0),
                              bottomRight: Radius.circular(200.0),
                            ),
                          ),
                        ),
                        Image.asset("assets/cv.png" , height: 30 , width: 30),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                MaterialButton(
                  onPressed: () {

                    Map<String,dynamic> dataBase={
                      "field1 ":job.text,
                      "field2 ":email.text,
                      "field3 ":phone.text,
                      "field4 ":adress.text,
                      "field5 ":experience.text,
                    };
                    FirebaseFirestore.instance.collection("Find a job").add(dataBase);
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm){
                      job.clear();
                      email.clear();
                      phone.clear();
                      adress.clear();
                      experience.clear();
                    };
                  },
                  child: Container(
                    height: 50.0,
                    width: 200.0,
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
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 12.0),
                          child: Text("Apply",
                            style:
                            Theme.of(context).textTheme.button!.apply(color: Colors.black),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(98.0),
                              topLeft: Radius.circular(98.0),
                              bottomRight: Radius.circular(200.0),
                            ),
                          ),
                        ),
                        Image.asset("assets/list.png" , height: 30 , width: 30),
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
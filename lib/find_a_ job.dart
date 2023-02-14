import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Find_a_job extends StatefulWidget {
   Find_a_job({super.key});

  @override
  State<Find_a_job> createState() => _Find_a_jobState();
}

class _Find_a_jobState extends State<Find_a_job> {
  final formKey = GlobalKey<FormState>();

  final job =TextEditingController();

  final phone =TextEditingController();

  final email =TextEditingController();

  final adress =TextEditingController();

  final experience =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                      controller: job,
                      keyboardType:TextInputType.text ,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
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
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: phone,
                    keyboardType:TextInputType.phone ,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
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
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: email,
                    keyboardType:TextInputType.emailAddress ,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
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
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: adress,
                    keyboardType:TextInputType.streetAddress ,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
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
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: experience,
                    keyboardType:TextInputType.text ,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
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
                          child: Text("Upload C.V" ,
                            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,),
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
                        Image.asset("assets/cv.png" , height: 30 , width: 30),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                MaterialButton(
                  onPressed: () {setState(() {
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm){
                      job.clear();
                      email.clear();
                      phone.clear();
                      adress.clear();
                      experience.clear();
                    }
                  });

                    Map<String,dynamic> dataBase={
                      "field1 ":job.text,
                      "field2 ":email.text,
                      "field3 ":phone.text,
                      "field4 ":adress.text,
                      "field5 ":experience.text,
                    };
                    FirebaseFirestore.instance.collection("Find a job").add(dataBase);
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
                          child: Text("Apply",
                            style:
                            Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
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
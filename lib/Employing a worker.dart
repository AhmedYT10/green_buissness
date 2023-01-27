import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:list_picker/list_picker.dart';
final listPickerField = ListPickerField(
  label: "Gender",
  items: const ["Male","Female"],
);

class Employing_a_worker extends StatelessWidget {
  Employing_a_worker({super.key});
  final formKey = GlobalKey<FormState>();
  final job =TextEditingController();
  final phone =TextEditingController();
  final email =TextEditingController();
  final Description_of_worker =TextEditingController();


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
                        return "Enter your Job";
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
                    controller: Description_of_worker,
                    keyboardType:TextInputType.streetAddress ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Description of worker",
                    ),
                    validator: (value){
                      if(value == null){
                        return "Enter your Description of a worker";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                const SizedBox(height: 20 ),
                Container(
                  width: 50,
                  child: listPickerField
                ),



                const SizedBox(height: 20),

                MaterialButton(
                  onPressed: () {
                    Map<String,dynamic> dataBase={
                      "field1 ":job.text,
                      "field2 ":email.text,
                      "field3 ":phone.text,
                      "field4 ":Description_of_worker.text,
                      "field5 ":listPickerField.value,
                    };
                    FirebaseFirestore.instance.collection("Employ a worker").add(dataBase);
                    final isValidForm = formKey.currentState!.validate();
                    if(isValidForm){
                      job.clear();
                      email.clear();
                      phone.clear();
                      Description_of_worker.clear();
                      listPickerField.empty;
                    };
                    final isvalidForm = formKey.currentState!.validate();
                    if(isvalidForm){
                      job.clear();
                      email.clear();
                      phone.clear();
                      Description_of_worker.clear();
                      listPickerField.empty;

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
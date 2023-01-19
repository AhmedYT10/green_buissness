import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Emplying_a_worker extends StatelessWidget {
   Emplying_a_worker({super.key});
  final formKey = GlobalKey<FormState>();
  final Name =TextEditingController();
  final Job =TextEditingController();
  final tele =TextEditingController();
  final Email =TextEditingController();
  final Adress =TextEditingController();
  final Experience =TextEditingController();


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
                const SizedBox(height:10),


                Container(
                  height: 45,
                  child: TextFormField(
                      controller: Name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Name ",
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
                  height: 45,
                  child: TextFormField(
                      controller: Job,
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
                    controller: tele,
                    keyboardType:TextInputType.phone ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Tele.No",
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
                  height: 45,
                  child: TextFormField(
                    controller: Email,
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
                    controller: Adress,
                    keyboardType:TextInputType.streetAddress ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Address",
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

                const SizedBox(height: 10,),

                Container(
                  height: 45,
                  child: TextFormField(
                    controller: Experience,
                    keyboardType:TextInputType.text ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Experience",
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

                const SizedBox(height:5),

                MaterialButton(onPressed: () {},
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.green,
                  child: const Text('Apply',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                ),

                const SizedBox(height: 5),

                MaterialButton(onPressed: () {
                 final isValidForm = formKey.currentState!.validate();
                 if(isValidForm){
                   Name.clear();
                   Job.clear();
                   Email.clear();
                   tele.clear();
                   Adress.clear();
                   Experience.clear();

                 };

                },
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.green,
                  child: const Text('Upload C.V',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
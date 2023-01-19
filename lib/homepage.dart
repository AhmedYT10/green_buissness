import 'package:flutter/material.dart';
import 'package:green_buissness/find_a_ job.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20,),
          child: Column(
            children:[
              const SizedBox(height: 50,),
              Image.asset("assets/logo.png" , height: 300, width: 300,),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Container(
                height: 45,
                child: TextFormField(
                  keyboardType:TextInputType.number ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: "Experience",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 45,
                child: TextFormField(
                  keyboardType:TextInputType.number ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: "Experience",
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                child: MaterialButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Emplying_a_worker()));
                },
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color:Colors.lightGreen,
                  child: const Text('Get Started',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
           ),
          ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
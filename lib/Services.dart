import 'package:flutter/material.dart';

class services extends StatelessWidget {
  const services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              Image.asset("assets/logo.png"),

              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    const SizedBox(height: 30),

                    MaterialButton(
                      onPressed: () => Navigator.of(context).pushNamed("Services"),
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
                              child: Text("Services" ,
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
                            Image.asset("assets/home.png" , height: 30, width: 30,),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }}

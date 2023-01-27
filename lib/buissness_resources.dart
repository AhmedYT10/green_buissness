import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class apply extends StatefulWidget {



  @override
  State<apply> createState() => _applyState();
}

class _applyState extends State<apply> {
  int currentindex = 0;
  final screens = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height:20),

          const Text('Money',style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

          const SizedBox(height: 20),

          Container(
            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(
                hintText: 'Name',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20),

          Container(
            width:double.infinity,
            height:40,
            child:TextFormField(
              decoration: InputDecoration(
                labelText: 'Money',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20),

          Container(
            width:double.infinity ,
            height:80 ,
            child:TextFormField(
              minLines: 1,
              maxLines: 10000,
              decoration: InputDecoration(
                hintText: 'Comment',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height:70),

          Container(
            width:double.infinity ,
            child: MaterialButton(
              onPressed: () {

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
                      child: const Text("Send",
                        style: TextStyle(color: Colors.black),
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
                    Image.asset("assets/send.png" , height: 30, width: 30,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height:20 ,),

          const Text('Place' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

          const SizedBox(height: 20,),
          Container(
            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(
                hintText: 'Name',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20),

          Container(
            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(
                hintText: 'Address',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20),

          Container(
            width:double.infinity ,
            height:80 ,
            child:TextFormField(
              minLines: 1,
              maxLines: 10000,
              decoration:InputDecoration(
                hintText: 'Comment',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height:70 ,),

          Container(
            width:double.infinity ,
            child: MaterialButton(
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
                      child: const Text("Send" ,
                        style: TextStyle(color: Colors.black),
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
                    Image.asset("assets/send.png" , height: 30, width: 30,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height:20),

          const Text('Idea' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

          const SizedBox(height: 20),

          Container(
            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(
                hintText: 'Name',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20,),

          Container(
            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(
                hintText: 'Idea',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height: 20),

          Container(
            width:double.infinity,
            height:80,
            child:TextFormField(
              minLines: 1,
              maxLines: 10000,
              decoration:InputDecoration(
                hintText: 'Comment',
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
              ) ,
            ) ,
          ),

          const SizedBox(height: 70),

          Container(
            width:double.infinity ,
            child: MaterialButton(
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
                      child: const Text("Send",
                        style: TextStyle(color: Colors.black),
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
                    Image.asset("assets/send.png" , height: 30, width: 30,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(),

      body: screens[currentindex],

      bottomNavigationBar:Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0 , vertical: 10.0),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black12,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabBackgroundGradient: const LinearGradient(colors: [Colors.redAccent , Colors.blueAccent]),
            padding: const EdgeInsets.all(16),
            onTabChange: (index)=>setState ( ()=> currentindex= index),
            tabs: const [
              GButton(
                icon: Icons.euro,
                text: "Money",
              ),
              GButton(
                icon: Icons.home,
                text: "Place",
              ),
              GButton(
                icon: Icons.lightbulb,
                text: "Idea",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

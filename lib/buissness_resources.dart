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
      child: SingleChildScrollView(
        scrollDirection:Axis.vertical ,

        child: Column(
          children: [
            const SizedBox(height:20),

            const Text('Money',style:TextStyle(fontWeight: FontWeight.bold,fontSize:28 )),

            const SizedBox(height: 20),
            Image.asset("assets/money.png",height: 175,width: 250,),
            const SizedBox(height:20),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Name',
                  labelStyle:TextStyle(fontSize:16,fontWeight: FontWeight.bold ) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20),

            Container(
              width:350,
              height:60,
              child:TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Money',
                 labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                minLines: 1,
                maxLines: 10000,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Comment',
                  labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height:40),

            Container(
              width:double.infinity ,
              child: MaterialButton(
                onPressed: () {

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
                        child: const Text("Send",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
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
                      Image.asset("assets/send.png" , height: 30, width: 30,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
       scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            const SizedBox(height:20 ,),

            const Text('Place' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

            const SizedBox(height: 20,),
            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Name',
                  labelStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:16

                  ) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Address',
                  labelStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                minLines: 1,
                maxLines: 10000,
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Comment',

                  labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height:40 ,),

            Container(
              width:double.infinity ,
              child: MaterialButton(
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
                        child: const Text("Send" ,
                          style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 18 ),
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
                      Image.asset("assets/send.png" , height: 30, width: 30,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height:20),

            const Text('Idea' , style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

            const SizedBox(height: 20),
            Image.asset("assets/idea.png",height: 175,width: 250,),
            const SizedBox(height:20),
            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Name',
                  labelStyle:TextStyle(fontSize:16,fontWeight:FontWeight.bold  ) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20,),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Idea',
                  labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height: 20),

            Container(
              width:350 ,
              height:60 ,
              child:TextFormField(
                minLines: 1,
                maxLines: 10000,
                decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Comment',
                  labelStyle:TextStyle(fontWeight: FontWeight.bold,fontSize:16 ) ,
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),
                ) ,
              ) ,
            ),

            const SizedBox(height: 40),

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
                      child: const Text("Send",
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
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
                    Image.asset("assets/send.png" , height: 30, width: 30,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

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

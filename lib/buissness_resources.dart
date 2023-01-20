import 'package:flutter/material.dart';

class apply extends StatefulWidget {


  @override
  State<apply> createState() => _applyState();
}

class _applyState extends State<apply> {
  int currentindex=0;

  final screens = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(



        children: [
          SizedBox(height:20 ,),





          Text('Money',style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 ) ,),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Name',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Money',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:80 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Comment',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height:70 ,),
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
                      child: Text("Send",
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
                    Image.asset("assets/home.png" , height: 30, width: 30,),
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
          SizedBox(height:20 ,),

          Text('Place',style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 ) ,),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Name',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Address',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:80 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Comment',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,

            ) ,



          ),
          SizedBox(height:70 ,),

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
                      child: Text("Send" ,
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
                    Image.asset("assets/home.png" , height: 30, width: 30,),
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
          SizedBox(height:20 ,),

          Text('Idea',style:TextStyle(fontWeight: FontWeight.bold,fontSize:20 ) ,),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Name',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:40 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Idea',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 20,),
          Container(

            width:double.infinity ,
            height:80 ,
            child:TextFormField(
              decoration:InputDecoration(

                labelText: 'Comment',

                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15), ),



              ) ,




            ) ,
          ),
          SizedBox(height: 70,),

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
                      child: Text("send" ,
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
                    Image.asset("assets/home.png" , height: 30, width: 30,),
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
      body:screens[currentindex],



      bottomNavigationBar:BottomNavigationBar(

        currentIndex:currentindex ,
        onTap:(index)=>setState ( ()=> currentindex= index) ,

        items: [
          BottomNavigationBarItem(icon:Icon(Icons.euro),
            label:'Money',

            backgroundColor:Colors.blue,


          ),
          BottomNavigationBarItem(icon:Icon(Icons.home),
            label:'Place',

            backgroundColor:Colors.blue,


          ),

          BottomNavigationBarItem(icon:Icon(Icons.lightbulb),
            label:'idea',

            backgroundColor:Colors.blue,


          ),
        ],
      ),
    );
  }
}

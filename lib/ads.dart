import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Online Marketing',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 25 ),),


            Center(
              child: Container(
                height: 300,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [

                    Container(

                      child:

                      const Text('To Make an ad your Product,Contact us on:',style:TextStyle(
                        fontWeight:FontWeight.bold,

                        fontSize:15,
                      ) ,) ,



                    ),
                    const SizedBox(
                      height: 10,


                    ),
                    const Text('Please send Information to your company ',style:TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),

                    const SizedBox(
                      height:20 ,

                    ),

                    MaterialButton(
                      onPressed: ()async{
                        launchUrlString("mailto:techno.mobilecom32023@gmail.com?subject=Make an Ad");
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
                              child: Text("Send Email" ,
                                style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
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

            Column( children: [

              SingleChildScrollView(
                scrollDirection:Axis.horizontal ,
                child:Row(
                  children: const [
                    Image(image: AssetImage('assets/restaurant.png'),width:300 ,height:195 ,),

                    Image(image: AssetImage('assets/restaurant.png'),width:300 ,height:195),

                  ],



                ) ,

              ),





            ],



            ) ,


          ],






        ),



      ),



    );
  }
}

import 'package:flutter/material.dart';

class TheServices extends StatelessWidget {
  TheServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),

      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
              MaterialButton(
                onPressed: () => Navigator.of(context).pushNamed("Buissness"),
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
                        child: Text("Business Resources",
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
                      Image.asset("assets/business.png" , height: 30, width: 30,),
                    ],
                  ),
                ),
              ),

                SizedBox(height: 20),

                MaterialButton(
                  onPressed: () => Navigator.of(context).pushNamed("Job"),
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
                          child: Text("Find a Job",
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
                        Image.asset("assets/job.png" , height: 30, width: 30,),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                MaterialButton(
                  onPressed: () => Navigator.of(context).pushNamed("Worker"),
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
                          child: Text("Employ a worker",
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
                        Image.asset("assets/worker.png" , height: 30, width: 30,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                MaterialButton(
                  onPressed: () => Navigator.of(context).pushNamed("Prepare"),
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
                          child: Text("Prepare a workplace",
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
                        Image.asset("assets/workplace.png" , height: 30, width: 30,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
      ),

    );
  }
}

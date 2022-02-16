import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/party.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ]
              )
            ),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Column(children: const [
                  Text("Welcome to HiTech party",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Your action is your opportunity",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  SizedBox(height: 550,),
                ],),


                isLogin ?

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            colors: [
                              Colors.deepOrange.withOpacity(0.8),
                              Colors.deepOrange.withOpacity(0.6),
                              Colors.deepOrange.withOpacity(0.4),
                              Colors.deepOrange.withOpacity(0.2),
                            ]
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrange,
                      ),
                      child: const Center(
                        child: Text("Start Up", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                )

                :

                Row(

                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              colors: [
                                Colors.red.withOpacity(0.8),
                                Colors.red.withOpacity(0.6),
                                Colors.red.withOpacity(0.4),
                                Colors.red.withOpacity(0.2),
                              ]
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text("Google+", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child:Container(
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            colors: [
                              Colors.blue.withOpacity(0.8),
                              Colors.blue.withOpacity(0.6),
                              Colors.blue.withOpacity(0.4),
                              Colors.blue.withOpacity(0.2),
                            ]
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          ),
                        child: const Center(
                          child: Text("Facebook+", style: TextStyle(color: Colors.white),),
                        ),
                    ),)
                  ],
                )
            ],),
          ),
        ),
        );
  }
}

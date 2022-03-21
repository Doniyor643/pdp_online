import 'package:flutter/material.dart';
import 'package:pdp_online/sign_page.dart';


class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                colors: [
                  Colors.green,
                  Colors.green.shade900,
                ],
              ),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)
              ),
              boxShadow: [BoxShadow(
                color: Colors.green.withOpacity(0.6),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0,3)
              )]
            ),
            child: Container(
              padding: const EdgeInsets.only(right: 25,bottom: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                    Text('Registration',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('Create login and password',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),)
                  ],),
                  const SizedBox(width: 10,),
                  Container(
                    height: 65,
                    width: 5,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 35,),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.5),
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 20,
                blurRadius: 18
              )]
            ),
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
            //padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Login',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.5),
                ),
              ),
            ),
          ),
          //const SizedBox(height: 35,),
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.5),
                boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 20,
                    blurRadius: 18
                )]
            ),
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
            //padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.key_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.5),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(
                onPressed: (){},
                child: const Text('Forgot password?')),
              const SizedBox(width: 30,)
          ],),
          Center(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(
                      color: Colors.indigo.withOpacity(0.2),
                      spreadRadius: 20,
                      blurRadius: 18
                  )]
              ),
              child: const Center(
                  child: Text('LOG IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                )
              ),
            ),
          ),
          const SizedBox(height: 35,),
          const Center(
            child: Text('Or connect using',
            style: TextStyle(color: Colors.grey),),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                  children: const [
                    SizedBox(width: 15,),
                    Text('f',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                      fontWeight: FontWeight.bold),),
                    SizedBox(width: 15,),
                    Text('facebook',
                      style: TextStyle(
                          color: Colors.white,
                      fontSize: 20),),
                    SizedBox(width: 15,),
                  ],
                ),

            ),
              const SizedBox(width: 15,),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 15,),
                    Text('G',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 15,),
                    Text('Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20),),
                    SizedBox(width: 15,),
                  ],
                ),

              )
          ],),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an accaunt?",
              style: TextStyle(
                color: Colors.grey
              ),),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, SignPage.id);
                  },
                  child: const Text("Sign in",
                    style: TextStyle(
                        color: Colors.lightBlue
                    ),),)
            ],)
        ],),
      ),
    );
  }
}

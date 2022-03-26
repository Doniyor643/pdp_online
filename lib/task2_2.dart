import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:pdp_online/task2_1.dart';

import 'dates_page.dart';

class HomeWork2 extends StatefulWidget {
  static const String id = 'task2_2';
  const HomeWork2({Key? key}) : super(key: key);

  @override
  State<HomeWork2> createState() => _HomeWork2State();
}

class _HomeWork2State extends State<HomeWork2> {

  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.all(40),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Text('Welcome',style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20
                    ),),
                    Text('S i g n  U p',style: GoogleFonts.didactGothic(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              height: 610,
              width: double.infinity,
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email'),
                    textEnter(
                      text: 'Enter email',
                      controller: emailController,
                    ),
                    const SizedBox(height: 30,),
                    const Text('Number'),
                    textEnter(
                      text: 'Enter number',
                      controller: numberController,
                    ),
                    const SizedBox(height: 30,),
                    const Text('Address'),
                    textEnter(
                      text: 'Enter your address',
                      controller: addressController,
                    ),

                    const SizedBox(height: 35,),
                    GestureDetector(
                      onTap: (){
                        doLogin();
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.teal
                        ),
                        child: const Center(child: Text("Sign Up",style: TextStyle(fontSize: 25,color: Colors.white),)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey,
                        ),
                        const Text("  OR  ",style: TextStyle(fontSize: 20,color: Colors.grey),),
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey,
                        ),
                      ],),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('f',style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold),),
                        SizedBox(width: 30,),
                        Icon(Icons.apple,color: Colors.cyan,),
                        SizedBox(width: 30,),
                        Icon(Icons.photo_camera_outlined,color: Colors.red,)
                      ],),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",
                          style: TextStyle(color: Colors.grey),),
                        TextButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, HomeWork.id);
                          },
                          child: const Text("Sign in",
                            style: TextStyle(color: Colors.blue),),)
                      ],)
                  ],
                ),
              ),

            )
          ],),
      ),
    );
  }

  Widget textEnter({controller, icon, text}){
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            hintStyle: GoogleFonts.didactGothic(color: Colors.grey),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                )
            )
        )
    );
  }

  void doLogin() {
    final String address = addressController.text.toString().trim();
    final String password = passwordController.text.toString().trim();
    final String email = emailController.text.toString().trim();
    final String number = numberController.text.toString().trim();

    var user = User(username: address, password: password,email:email, phone: number);
    var box = Hive.box('pdp_online');

    // Ma'lumotlarni yozish
    box.put('user', user.toJson());

    // Ma'lumotlarni o'qish
    var user2 = User.fromJson(box.get('user'));

    print(user2.email);
    print(user2.phone);
    print(user2.username);

  }
}

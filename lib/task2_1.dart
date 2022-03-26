import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:pdp_online/task2_2.dart';

import 'dates_page.dart';

class HomeWork extends StatefulWidget {
  static const String id = 'task2_1';
  const HomeWork({Key? key}) : super(key: key);

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/Ukraine.gif'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Welcome',style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20
                  ),),
                  Text('S i g n  I n',style: GoogleFonts.didactGothic(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ),
          Container(
            height: 600,
            width: double.infinity,
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Email'),
                textEnter(
                  text: 'Enter email',
                  controller: emailController,
                ),
                const SizedBox(height: 30,),
                const Text('Password'),
                textEnter(
                  text: 'Enter password',
                  controller: passwordController,
                ),
                const SizedBox(height: 15,),
                Center(
                  child: TextButton(
                      onPressed: (){},
                      child: const Text("Forget password?")),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.teal
                  ),
                  child: const Center(child: Text("Sign In",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                    const Text("Don't have an account?",
                      style: TextStyle(color: Colors.grey),),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, HomeWork2.id);
                      },
                      child: const Text("Sign up",
                        style: TextStyle(color: Colors.blue),),)
                  ],)
              ],
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
    final String name = addressController.text.toString().trim();
    final String password = passwordController.text.toString().trim();
    final String email = emailController.text.toString().trim();
    final String phone = numberController.text.toString().trim();

    var user = User(username: name, password: password,email:email, phone: phone);
    var box = Hive.box('pdp_online');

    // Ma'lumotlarni yozish
    box.put('user', user.toJson());

    // Ma'lumotlarni o'qish
    var user2 = User.fromJson(box.get('user'));

    print(user2.password);
    print(user2.username);

  }
}

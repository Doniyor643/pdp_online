import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:pdp_online/task2_1.dart';

import 'dates_page.dart';
class CreateAccount extends StatefulWidget {
  static const String id = 'textFields';
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black87,
                Colors.black54
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 175,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        Text('Create',
                          style: GoogleFonts.didactGothic(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text('Account',
                          style: GoogleFonts.didactGothic(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),


                      ],
                    ),
                  ),
                  const SizedBox(height: 60),

                  Column(
                    children: [
                      textEnter(
                          controller: nameController,
                          icon: const Icon(Icons.person,
                            color: Colors.grey,),
                          text: 'User Name'
                      ),
                      const SizedBox(height: 20),
                      textEnter(
                          controller: passwordController,
                          icon: const Icon(Icons.email_outlined,
                            color: Colors.grey,),
                          text: 'E-mail'
                      ),
                      const SizedBox(height: 20),
                      textEnter(
                          controller: nameController,
                          icon: const Icon(Icons.phone,
                            color: Colors.grey,),
                          text: 'Phone'
                      ),
                      const SizedBox(height: 20),
                      textEnter(
                          controller: nameController,
                          icon: const Icon(Icons.email_outlined,
                            color: Colors.grey,),
                          text: 'Password'
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){
                      _doLogin();
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade800,
                                Colors.blue.shade400
                              ]
                          )
                      ),
                      child: const Icon(Icons.arrow_forward,size: 50,color: Colors.white,),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                    style: TextStyle(color: Colors.grey),),
                  TextButton(
                    onPressed: (){},
                    child: const Text("SIGN IN",
                      style: TextStyle(color: Colors.blue),),)
                ],),
              
              TextButton(
                  onPressed: (){
                Navigator.pushNamed(context, HomeWork.id);
                },
                  child: const Text('Task 2  >>>'))
            ],
          ),
        ),


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


  void _doLogin() {
    final String name = nameController.text.toString().trim();
    final String password = passwordController.text.toString().trim();
    final String email = emailController.text.toString().trim();
    final String phone = phoneController.text.toString().trim();

    var box = Hive.box('pdp_online');

    // Ma'lumotlarni yozish
    box.put('name', name);
    box.put('password',password);

    // Malumotlarni o'qish
    String id = box.get('name');
    String pw = box.get('password');
  }
}



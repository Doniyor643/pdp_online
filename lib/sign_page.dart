import 'package:flutter/material.dart';
import 'package:pdp_online/home_page.dart';
import 'package:pdp_online/user_page.dart';

class SignPage extends StatefulWidget {
  static const String id = 'sign_page';
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            height: 250,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Let's Get Started",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                Text("Create an account to Q Allure to get all features",
                  style: TextStyle(
                    color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 30,),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                textFormField(text: 'Name',icon: const Icon(Icons.person),controller: nameController),
                const SizedBox(height: 30,),
                textFormField(text: 'Email',icon: const Icon(Icons.email),controller: emailController),
                const SizedBox(height: 30,),
                textFormField(text: 'Phone',icon: const Icon(Icons.phone_android),controller: phoneController),
                const SizedBox(height: 30,),
                textFormField(text: 'Password',icon: const Icon(Icons.key),controller: passwordController),
                const SizedBox(height: 30,),
                textFormField(text: 'Confirm password',icon: const Icon(Icons.password),controller: confirmPasswordController),
                const SizedBox(height: 30,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      _doLogin();
                    },
                    child: Container(
                      height: 40,
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
                          child: Text('CREATE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                      style: TextStyle(
                          color: Colors.grey
                      ),),
                    TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, HomePage.id);
                      },
                      child: const Text("Login here",
                        style: TextStyle(
                            color: Colors.lightBlue
                        ),),)
                  ],),

              ],),
            ),
        ],),
      ),
    );
  }
  textFormField({text,icon,controller}){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [BoxShadow(
          spreadRadius: 9,
          blurRadius: 8,
          color: Colors.grey.withOpacity(0.1)
          //offset: Offset(0,0)
        )]
      ),
      child: TextField(
        controller: controller,
        onTap: (){
          setState(() {

          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25)
          ),
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: icon,
        ),
      ),
    );
  }

  void _doLogin(){
    String name = nameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String phone = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String confirmPassword = confirmPasswordController.text.toString().trim();
    
    User user = User(
      name: name, 
      email: email,
      phone: phone,
      password: password,
      confirmPassword: confirmPassword
    );
    User.storeUser(user);
  }
}

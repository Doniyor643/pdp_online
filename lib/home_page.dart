import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pdp_online/dates_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdp_online/textFields.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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
          colors: [Colors.black87, Colors.black54],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Ukraine.gif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Welcome to Ukraine',
                          style: GoogleFonts.didactGothic(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'peace is a great blessing',
                          style: GoogleFonts.didactGothic(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  textEnter(
                      controller: userNameController,
                      icon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      text: 'User name'),
                  const SizedBox(
                    height: 20,
                  ),
                  textEnter(
                      controller: passwordController,
                      icon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.grey,
                      ),
                      text: 'Password'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password?',
                        style: GoogleFonts.didactGothic(
                          color: Colors.grey,
                          //fontWeight: FontWeight.bold
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _doLogin();
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            Colors.blue.shade800,
                            Colors.blue.shade400
                          ])),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CreateAccount.id);
                    },
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textEnter({controller, icon, text}) {
    return TextField(
        controller: controller,
        style: const TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
          counterStyle: const TextStyle(color: Colors.grey),
            prefixIcon: icon,
            hintText: text,
            hintStyle: GoogleFonts.didactGothic(color: Colors.grey),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))));
  }

  //////////////////////  Save style String  //////////////////////////////////
  void _doLogin() {
    final String name = userNameController.text.toString().trim();
    final String password = passwordController.text.toString().trim();

    var box = Hive.box('pdp_online');

    // Ma'lumotlarni yozish
    box.put('name', name);
    box.put('password',password);

    // Malumotlarni o'qish
    String id = box.get('name');
    String pw = box.get('password');
  }

  //////////////////////  Save style Object  //////////////////////////////////
  // void doLogin() {
  //   final String name = userNameController.text.toString().trim();
  //   final String password = passwordController.text.toString().trim();
  //
  //   var user = User(username: name, password: password);
  //   var box = Hive.box('pdp_online');
  //
  //   // Ma'lumotlarni yozish
  //   box.put('user', user.toJson());
  //
  //   // Ma'lumotlarni o'qish
  //   var user2 = User.fromJson(box.get('user'));
  //
  //   print(user2.password);
  //   print(user2.username);
  //
  // }

}




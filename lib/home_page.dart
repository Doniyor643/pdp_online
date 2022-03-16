import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

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
      appBar: AppBar(
        title: const Text('easy_localization'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
                  child: const Text('welcome',style: TextStyle(fontSize: 20),).tr(),
                )),
            Row(children: [
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: (){
                      context.locale = const Locale('en','US');
                    },
                    child: const Text("English",style: TextStyle(color: Colors.white),),
                  )
              ),
              const SizedBox(width: 10,),
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.indigo,
                    onPressed: (){
                      context.locale = const Locale('uz','UZ');
                    },
                    child: const Text("O'zbek",style: TextStyle(color: Colors.white),),
                  )
              ),
              const SizedBox(width: 10,),
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: (){
                      context.locale = const Locale('ru','RU');
                    },
                    child: const Text("Russian",style: TextStyle(color: Colors.white),),
                  )
              ),
            ],),
            const SizedBox(height: 10,),
            Row(children: [
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.cyan,
                    onPressed: (){
                      context.locale = const Locale('uk','UK');
                    },
                    child: const Text("Ukraine",style: TextStyle(color: Colors.white),),
                  )
              ),
              const SizedBox(width: 10,),
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.pink,
                    onPressed: (){
                      context.locale = const Locale('ko','KO');
                    },
                    child: const Text("Korean",style: TextStyle(color: Colors.white),),
                  )
              ),
              const SizedBox(width: 10,),
              Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.orange,
                    onPressed: (){
                      context.locale = const Locale('fr','FR');
                    },
                    child: const Text("French",style: TextStyle(color: Colors.white),),
                  )
              ),
            ],),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.deepPurple,
                      onPressed: (){
                        context.locale = const Locale('ja','JA');
                      },
                      child: const Text("Japanese",style: TextStyle(color: Colors.white),),
                    )
                ),
              ],
            ),
        ],),
      )
    );
  }
}

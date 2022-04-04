import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pdp_online/http_service.dart';
import 'package:pdp_online/posts.dart';

import 'dates_ticher.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Post post = Post(id: 1,name: 'PDP',salary: 36000,age: 29, profileImage: '');
  Post post2 = Post(id: 2,name: 'Learn',salary: 50000,age: 18, profileImage: '');

  String getDate = '';
  String postDate = '';
  String putDate = '';
  String deleteDate = '';
  String dates = '';

  // GET
  void _apiGet(){
    Network.GET(NetworkData.apiGet, NetworkData.paramsEmpty()).then((response) => {
    setState(() {
    getDate = response.toString();
      })
    });

  }

  // POST
  void _apiPost(Post post){
    Network.POST(NetworkData.apiPost, NetworkData.paramsCreate(post)).then((response) => {
    setState(() {
    postDate = response.toString();
      })
    });
  }

  // PUT
  void _apiPut(Post post){
    Network.PUT(NetworkData.apiPut, NetworkData.paramsUpdate(post)).then((response) => {
      setState(() {
        putDate = response.toString();
      })
    });
  }

  // Delete
  void _apiDelete(Post post){
    Network.DEL(NetworkData.apiPost+post.id.toString(), NetworkData.paramsEmpty()).then((response) => {
      setState(() {
        deleteDate = response.toString();
      })
    });
  }

  @override
  void initState() {
    super.initState();
    _apiGet();
    _apiPost(post);
    _apiPut(post2);
    _apiDelete(post);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP'),
        actions: [
          textButtons(
            text: 'GET',
            color: Colors.red,
            date: getDate
          ),
          textButtons(
              text: 'POST',
              color: Colors.deepPurple,
              date: postDate
          ),
          textButtons(
              text: 'PUT',
              color: Colors.pinkAccent,
              date: putDate
          ),
          textButtons(
              text: 'DEL',
              color: Colors.green,
              date: deleteDate
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Text(dates)
        ),
      ),
    );
  }

  Widget textButtons({text,color,set,date}) {
    return TextButton(
        onPressed: (){
          setState(() {
            dates = date;
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(text,style: const TextStyle(color: Colors.white),)
    );
  }
  Widget asd(dates){
    if(dates.isEmpty){
      return Text(dates);
    }else{
      return const CircularProgressIndicator();
    }
  }

}

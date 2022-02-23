import 'package:flutter/material.dart';
import 'package:pdp_online/feed_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexPage = 0;
  final _pages = [
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),

  ];

   colorTheme(){
     return true;
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade800,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor:Colors.black,
          title: const Text('Instagram',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 20),),
          leading:  IconButton(
              onPressed: (){},
              icon: const Icon(Icons.camera_alt,color:Colors.white)),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.airplay,color: Colors.white,)),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.share,color: Colors.white,))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          currentIndex: indexPage,
          onTap: (i){
            setState(() {
              indexPage = i ;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home,),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Upload',
              icon: Icon(Icons.add_box_outlined),
            ),
            BottomNavigationBarItem(
              label: 'User',
              icon: Icon(Icons.person),
            ),
          ],

        ),
        body: _pages[indexPage],
        );
  }
}

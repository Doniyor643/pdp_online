import 'package:flutter/material.dart';

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
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        title: const Text('Cars',style: TextStyle(color: Colors.red),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.red,)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.red,)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                singleTab(true,"All"),
                singleTab(false, "Red"),
                singleTab(false, "Green"),
                singleTab(false, "Blue"),
                singleTab(false, "Yellow"),
              ],),
          ),
          const SizedBox(height: 20,),
          maceItem("assets/images/audiRed.jpg"),
          maceItem("assets/images/audiGreen.jpg"),
          maceItem("assets/images/audiBlue.jpg"),
          maceItem("assets/images/audiYellow.jpg"),
        ],),
      ),
    );
  }

  singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: TextStyle(
            fontSize: type ? 20 : 15,
            color: type ? Colors.white : Colors.black,
          ),),
        ),
      ),
    );
  }

  maceItem(String image) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: const Offset(0,10)
          )
        ]
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("AUDI",style: TextStyle(color: Colors.white,fontSize: 25),),
                        SizedBox(width: 20,),
                        Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20),),
                      ],
                    )
                ),
              ],
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("100 \$",style: TextStyle(color: Colors.white,fontSize: 20),),
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                  ),
                  child: const Icon(Icons.favorite_outline, size: 25,),
                ),
              ],
            ),),


          ],
        ),
      ),
    );
  }
}

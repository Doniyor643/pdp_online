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
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/hotelTitle.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Welcome to Hotels",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: "Search",
                              labelStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // body
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Body
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HiTech hotels",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          maceItem(image: "hotel6.jpg", title: "Hotel6"),
                          maceItem(image: "hotel7.jpg", title: "Hotel7"),
                          maceItem(image: "hotel8.jpg", title: "Hotel8"),
                          maceItem(image: "hotel9.jpg", title: "Hotel9"),
                          maceItem(image: "hotel10.jpg", title: "Hotel10"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Best hotels",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          maceItem(image: "hotel1.jpg", title: "Hotel1"),
                          maceItem(image: "hotel2.jpg", title: "Hotel2"),
                          maceItem(image: "hotel3.jpg", title: "Hotel3"),
                          maceItem(image: "hotel4.jpg", title: "Hotel4"),
                          maceItem(image: "hotel5.jpg", title: "Hotel5"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Airport hotels",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          maceItem(image: "hotel10.jpg", title: "Hotel1"),
                          maceItem(image: "hotel9.jpg", title: "Hotel2"),
                          maceItem(image: "hotel4.jpg", title: "Hotel3"),
                          maceItem(image: "hotel5.jpg", title: "Hotel4"),
                          maceItem(image: "hotel5.jpg", title: "Hotel5"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  maceItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/images/$image"),
              fit: BoxFit.cover,
            )),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

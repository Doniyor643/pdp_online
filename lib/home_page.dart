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
          backgroundColor: const Color(0xFF263b55),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const SizedBox(
              width: 210,
              child: Image(image: AssetImage('assets/images/amazon_logo.jpg'),
                height: 50,
                fit: BoxFit.cover,),
            ),
              SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.mic, color: Colors.white,)),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.shopping_cart, color: Colors.white,)),
                  ],
                )
              )
          ],),
        ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey,
        child: Column(children: [
          // Search
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            color: const Color(0xFF263b55),
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(
                children: const [
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          icon: Icon(Icons.search),
                        ),
                      )
                  ),
                  Icon(Icons.camera_alt, color: Color(0xFF263b55),)
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(children: const [
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(height: 5,),
                      Text('Republic of Uzbekistan',style: TextStyle(color: Colors.white),)
                    ],),
                  ),
                  // adds
                  SizedBox(
                    height: 140,
                    child: Row(children: [
                      Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(70),
                                  bottomRight: Radius.circular(70),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/progMobile.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                        ),
                          )
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.white,
                        child: const Center(child: Text('We ship 45million products'),),
                      ),
                    ],),
                  ),
                  const SizedBox(height: 8,),
                  // Sign in
                  Container(
                    height: 160,
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Your action is your opportunity'),
                        const SizedBox(height: 15,),

                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.deepOrange,
                          child: const Center(
                              child: Text("Sign in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16),
                              )
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text('Create an account',style: TextStyle(fontSize: 16, color: Colors.blue),),

                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  //Deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Deal of the day',style: TextStyle(fontSize: 22),),
                        Image(
                          height: 240,
                          width: double.infinity,
                          image: AssetImage('assets/images/work.jpg'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8,),
                        Text('Good work good result',style: TextStyle(fontSize: 16),),
                        SizedBox(height: 8,),
                        Text('\$300.0 - \$500.0',style: TextStyle(fontSize: 16),)

                    ],),
                  ),
                  const SizedBox(height: 8,),
                  //Best
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("Best in electronics",style: TextStyle(fontSize: 22),),
                      const SizedBox(height: 16,),
                      SizedBox(
                        height: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/programming1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/programming2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 8,),
                            Expanded(
                              child: Column(
                                children: const [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/programming3.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/programming4.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],),
                      )
                    ],),
                  ),
                  const SizedBox(height: 8,),

                  //Home work
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Home work",style: TextStyle(fontSize: 22),),
                        const SizedBox(height: 16,),
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.width,
                          child: Column(children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                                width: MediaQuery.of(context).size.width,
                                child: const Image(
                                  image: AssetImage('assets/images/programming4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8,),
                            Expanded(child: Row(children: [
                              Expanded(
                                child: Container(
                                  height: MediaQuery.of(context).size.width,
                                  color: Colors.red,
                                  child: const Image(
                                    image: AssetImage('assets/images/programming1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8,),
                              Expanded(child: Container(
                                height: MediaQuery.of(context).size.width,
                                color: Colors.green,
                                child: const Image(
                                  image: AssetImage('assets/images/programming3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                ),
                              )
                            ],)
                            )
                          ],
                          ),
                        )
                      ],),
                  ),


                  const SizedBox(height: 8,),
                ],
              ))
        ],),
      ),
        );
  }
}

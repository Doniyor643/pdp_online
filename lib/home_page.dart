import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onTheme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onTheme? Colors.grey : Colors.grey.shade800,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: onTheme? Colors.white : Colors.black,
          title: const Text('facebook',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 30),),
          actions: [
            IconButton(
                onPressed: (){
                  setState(() {
                    onTheme = !onTheme;
                  });
                },
                icon: Icon(Icons.opacity,color: onTheme? Colors.blue : Colors.blue.shade200,))
          ],
        ),
      body: ListView(
        children: [

          Container(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120,
            color:  onTheme? Colors.white : Colors.black,
            child: Column(children: [
              Expanded(child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/programming1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                      child: Container(
                        height: 46,
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey
                          )
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "What's on your mind ?",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
                        ),
                      )
                  )
                ],
              )),

              Expanded(child: Row(
                children: [
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.video_call, color: Colors.red,),
                          const SizedBox(width: 5,),
                          Text('Live',style: TextStyle(color: !onTheme? Colors.white : Colors.black,),)
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(top:15,bottom: 15),
                    width: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.photo, color: Colors.green,),
                          const SizedBox(width: 5,),
                          Text('Photo',style: TextStyle(color: !onTheme? Colors.white : Colors.black,),)
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(top:15,bottom: 15),
                    width: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on, color: Colors.red,),
                          const SizedBox(width: 5,),
                          Text('Check in',style: TextStyle(color: !onTheme? Colors.white : Colors.black,),)
                        ],
                      ))
                ],
              ))
            ],),
          ),

          Container(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            color:   onTheme? Colors.white : Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                makeStory(
                  storyImage: 'assets/images/programming2.jpg',
                  userImage: 'assets/images/programming2.jpg',
                  userName: 'Name'
                ),
                makeStory(
                    storyImage: 'assets/images/programming1.jpg',
                    userImage: 'assets/images/programming3.jpg',
                    userName: 'Name'
                ),
                makeStory(
                    storyImage: 'assets/images/programming2.jpg',
                    userImage: 'assets/images/programming1.jpg',
                    userName: 'Name'
                ),
                makeStory(
                    storyImage: 'assets/images/programming3.jpg',
                    userImage: 'assets/images/programming4.jpg',
                    userName: 'Name'
                ),
                makeStory(
                    storyImage: 'assets/images/programming4.jpg',
                    userImage: 'assets/images/programming1.jpg',
                    userName: 'Name'
                ),
            ],),
          ),

          makeFeed(
            userName: 'User Name',
            userImage: 'assets/images/programming1.jpg',
            feedTime: '12:05',
            feedText: 'Feed Text: udhede eedwodkw debchdch dcjdcdo eidejdow 93ddkwodk399dw wdwdo',
            feedImage: 'assets/images/programming2.jpg',
            feedImage2: 'assets/images/programming1.jpg',
          ),
          makeFeed(
            userName: 'User Name',
            userImage: 'assets/images/programming2.jpg',
            feedTime: '12:05',
            feedText: 'Feed Text: udheded dkw debchdch dcjdcdo',
            feedImage: 'assets/images/programming4.jpg',
            feedImage2: 'assets/images/programming2.jpg',
          ),
          makeFeed(
            userName: 'User Name',
            userImage: 'assets/images/programming3.jpg',
            feedTime: '12:05',
            feedText: 'Feed Text: ede eedwodkw debchdch dcwodk399dw wdwdo',
            feedImage: 'assets/images/programming1.jpg',
            feedImage2: 'assets/images/programming3.jpg',
          ),
          makeFeed(
            userName: 'User Name',
            userImage: 'assets/images/programming4.jpg',
            feedTime: '12:05',
            feedText: 'Feed Text: dch dcjdcdo eidejdow 93ddkwodk399dw wdwdo',
            feedImage: 'assets/images/programming2.jpg',
            feedImage2: 'assets/images/programming4.jpg',
          ),
        ],
      ),
        );
  }

  Widget makeStory({storyImage,userImage,userName}) {
    return AspectRatio(
        aspectRatio: 1.3/2,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1),
                ]
              )
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Text(userName,style: const TextStyle(color: Colors.white),)
              ],
            ),
        ),
      )
    );
  }

  makeFeed({userName,userImage,feedTime,feedImage,feedImage2,feedText}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: onTheme? Colors.white : Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(children: [
              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName,style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 5,),
                        Text(feedTime,style: const TextStyle(color: Colors.grey,),),
                      ],
                    )
                  ],),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.more_horiz,size: 30,color: Colors.grey,))
                ],
              ),
              const SizedBox(height: 20,),
              Text(feedText,style: TextStyle(color: Colors.grey.shade600,height: 1.5,letterSpacing: .7),)

            ],),
          ),
          const SizedBox(height: 15,),
          //photo
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(feedImage),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImage2),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 15,),
          //likes
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  makeLike(),
                  Transform.translate(
                      offset: const Offset(-5,0),
                    child: makeLove(),
                  ),
                  const SizedBox(width: 5,),
                  Text('2.5k',style: TextStyle(fontSize: 15,color: Colors.grey.shade800),)

                ],),
                const Text('400 comments',)
            ],),
          ),
          const SizedBox(height: 15,),
          //like, comment, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mikeLikeButton(isActive: true),
              mikeCommentButton(),
              mikeShareButton(),
            ],
          ),
        ],),
    );
  }

  makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
      ),
    );
  }

  makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }

  mikeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,size: 18,color: isActive ? Colors.blue : Colors.grey),
            const SizedBox(width: 5,),
            Text('Like', style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }

  mikeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chat,size: 18,color: Colors.grey),
            SizedBox(width: 5,),
            Text('Comments', style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  mikeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.share,size: 18,color: Colors.grey),
            SizedBox(width: 5,),
            Text('Share', style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'model/post_model.dart';
import 'model/story_model.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  final List<Story> _stories = [
    Story('assets/images/programming1.jpg', 'SkyNet'),
    Story('assets/images/programming2.jpg', 'al-Xorazmiy'),
    Story('assets/images/programming3.jpg', 'UzDrone'),
    Story('assets/images/programming4.jpg', 'Arduino'),
    Story('assets/images/programming1.jpg', 'Aspire'),
  ];

  final List<Post> _posts = [
    Post(
      userName: 'Terminator',
      userImage: 'assets/images/programming1.jpg',
      postImage: 'assets/images/programming2.jpg',
      caption: 'al bi back'
    ),
    Post(
        userName: 'Alibaba',
        userImage: 'assets/images/programming2.jpg',
        postImage: 'assets/images/programming1.jpg',
        caption: 'Hello sim sim how are doing going'
    ),
    Post(
        userName: 'My Dog',
        userImage: 'assets/images/programming3.jpg',
        postImage: 'assets/images/programming4.jpg',
        caption: 'voooov vo ovov vov vovovovov'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            //stories watch all
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Stories',style: TextStyle(color: Colors.white),),
                  Text('Watch All',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),

            //story list
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story){
                  return _itemOfStory(story);
                }).toList(),
              ),
            ),

            //post list
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return _itemOfPost(_posts[index]);
                },

              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _itemOfPost(Post post){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          //header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image(
                      image: AssetImage(post.userImage),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(post.userName,style: const TextStyle(color: Colors.white),)
                ],),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.more_horiz,color: Colors.grey,))
              ],
            ),
          ),

          //image
          FadeInImage(
            width: MediaQuery.of(context).size.width,
              placeholder: const AssetImage('assets/images/progMobile.jpg'),
              image: AssetImage(post.postImage)
          ),

          //icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                IconButton(
                  color: Colors.grey,
                    onPressed: (){},
                    icon: const Icon(Icons.favorite_outline)),
                IconButton(
                  color: Colors.grey,
                    onPressed: (){},
                    icon: const Icon(Icons.mode_comment_outlined)),
                IconButton(
                  color: Colors.grey,
                    onPressed: (){},
                    icon: const Icon(Icons.send)),
              ],),
              IconButton(
                color: Colors.grey,
                  onPressed: (){},
                  icon: const Icon(Icons.bookmark_border)),
            ],
          ),

          //tags
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
              softWrap: true,
                overflow: TextOverflow.visible,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Liced By',
                      style: TextStyle(color: Colors.grey)
                    ),
                    TextSpan(
                        text: ' Lucien,',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                        text: ' Capitan America,',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                        text: ' Stalin,',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                        text: ' and',
                        style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                        text: ' 1254',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                        text: ' others',
                        style: TextStyle(color: Colors.grey))
                      ])
            ),
          ),

          //caption
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
            child: RichText(
                softWrap: true,
                overflow: TextOverflow.visible,
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: post.userName,
                          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                          text: post.caption,
                          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                      ),
                    ])
            ),
          ),

          //post date
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.topLeft,
            child: const Text(
              'February 2022',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey),
            ),
          ),

        ],
      ),
    );
  }

  Widget _itemOfStory(Story story){
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(
            width: 3,
            color: const Color(0xFF8e44ad)
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image(
              image: AssetImage(story.image),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height: 10,),
      Text(story.name,style: const TextStyle(color: Colors.white),)
    ],);
  }
}

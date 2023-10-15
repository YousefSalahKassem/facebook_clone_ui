import 'package:facebook_clone_ui/features/Home/model/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatelessWidget {
  final Post postItem;

  const PostWidget({
    super.key,
    required this.postItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(postItem.profileImageUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    postItem.username,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(postItem.time)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            postItem.content,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Row(
                children: [
                  const Icon(FontAwesomeIcons.thumbsUp,size: 15,color: Colors.blue,),
                  Text(' ${postItem.likes}')
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text('${postItem.comments} comments  .  '),
                  Text('${postItem.shares} shares'),
                ],
              )
            ],
          ),
          const Divider(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.thumbsUp,size: 20,),
                  SizedBox(width: 5,),
                  Text('Like',style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.message,size: 20,),
                  SizedBox(width: 5,),
                  Text('Comment',style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.share,size: 20,),
                  SizedBox(width: 5,),
                  Text('Share',style: TextStyle(fontSize: 14),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

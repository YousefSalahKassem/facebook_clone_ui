import 'package:flutter/material.dart';

class OnlineWidget extends StatelessWidget {
  const OnlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.blue,
                width: 1,
              )
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.video_call,
                  size: 30,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Create\nRoom',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
          const SizedBox(width: 15,),
          const Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/dan.jpg'),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WritePostWidget extends StatelessWidget {
  const WritePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/joey.jpg'),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: 70,
                width: 300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey[400]!, width: 1)),
                child: const Text("Write something here..."),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.live_tv,
                    size: 20,
                    color: Colors.pink,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Live',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  )
                ],
              ),
              SizedBox(
                height: 20,
                child: VerticalDivider(
                  color: Colors.grey[600],
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.photo_library,
                    size: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Photo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  )
                ],
              ),
              SizedBox(
                height: 20,
                child: VerticalDivider(
                  color: Colors.grey[600],
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.video_call,
                    size: 20,
                    color: Colors.purple,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Room',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

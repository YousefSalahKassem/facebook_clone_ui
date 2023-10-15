import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/andy.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yousef Salah",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "See your profile",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              height: 20,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuItem(icon: Icons.group, title: 'Groups'),
              MenuItem(icon: Icons.shopping_basket, title: 'Marketplacec'),
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuItem(icon: Icons.person, title: 'Friends'),
              MenuItem(icon: Icons.history, title: 'Memories'),
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuItem(icon: Icons.flag, title: 'Pages'),
              MenuItem(icon: Icons.save_alt, title: 'Saved'),
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuItem(icon: FontAwesomeIcons.bagShopping, title: 'Jobs'),
              MenuItem(icon: Icons.event, title: 'Events'),
            ],
          ),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.help,size: 40,color: Colors.grey[700],),
                const SizedBox(width: 10,),
                const Text('Help & Support',style: TextStyle(fontSize: 18),),
                const Spacer(),
                const Icon(Icons.arrow_drop_down,size: 30,),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.settings,size: 40,color: Colors.grey[700],),
                const SizedBox(width: 10,),
                const Text('Settings & Privacy',style: TextStyle(fontSize: 18),),
                const Spacer(),
                const Icon(Icons.arrow_drop_down,size: 30,),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.exit_to_app,size: 40,color: Colors.grey[700],),
                const SizedBox(width: 10,),
                const Text('Logout',style: TextStyle(fontSize: 18),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 190,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

import 'package:facebook_clone_ui/features/Friends/screens/friends_screen.dart';
import 'package:facebook_clone_ui/features/Home/screens/home_page.dart';
import 'package:facebook_clone_ui/features/Menu/screens/menu_screen.dart';
import 'package:facebook_clone_ui/features/Notifications/screens/notifications_screen.dart';
import 'package:facebook_clone_ui/features/Profile/screens/profile_screen.dart';
import 'package:facebook_clone_ui/features/Watch/screens/watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: TabBarView(controller: _tabController, children: const [
        HomePage(),
        FriendsScreen(),
        WatchScreen(),
        ProfileScreen(),
        NotificationsScreen(),
        MenuScreen()
      ]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: buildAppBarTitle(),
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      bottom: buildTabBar(),
    );
  }

  Row buildAppBarTitle() {
    return const Row(
      children: [
        Text(
          'Facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
            ),
          ],
        )
      ],
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      indicatorColor: Colors.blueAccent,
      labelColor: Colors.blueAccent,
      unselectedLabelColor: Colors.grey,
      controller: _tabController,
      tabs: const [
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.people),
        ),
        Tab(
          icon: Icon(Icons.ondemand_video),
        ),
        Tab(
          icon: Icon(Icons.account_circle),
        ),
        Tab(
          icon: Icon(Icons.notifications),
        ),
        Tab(
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}

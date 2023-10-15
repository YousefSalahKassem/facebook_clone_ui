import 'package:facebook_clone_ui/features/Notifications/model/user_notification.dart';
import 'package:facebook_clone_ui/features/Notifications/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Notifications",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: UserNotification.notifications.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return NotificationWidget(notification: UserNotification.notifications[index]);
              })
        ],
      ),
    );
  }
}

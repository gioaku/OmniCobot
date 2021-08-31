import 'package:admin/models/notificationInfo.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(title: "Notifications", home: false),
            SizedBox(height: defaultPadding),
            ListView.builder(
              itemBuilder: (context, i) =>
                  NotificationBox(demoNotifications[i]),
              itemCount: demoNotifications.length,
            )
          ],
        ),
      ),
    );
  }
}

class NotificationBox extends StatelessWidget {
  const NotificationBox(this.notification, {Key? key}) : super(key: key);
  final NotificationInfo notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: notification.status == "alert"
            ? Colors.red[300]
            : notification.status == "error"
                ? Colors.yellow[300]
                : secondaryColor,
        // border: Border.all(
        //   color: (notification.status == "alert"
        //       ? Colors.red[800]
        //       : notification.status == "error"
        //           ? Colors.yellow[800]
        //           : Colors.white),
        // )
      ),
    );
  }
}

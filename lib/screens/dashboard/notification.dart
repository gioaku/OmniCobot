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
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
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
    Color? brd = notification.status == "warning"
        ? Colors.yellow[800]
        : notification.status == "error"
            ? Colors.red[800]
            : Colors.white;
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: brd ?? Colors.white, width: 2),
      ),
      child: Row(
        children: [
          notification.status == "warning"
              ? (Icon(
                  Icons.warning,
                  color: brd,
                ))
              : notification.status == "error"
                  ? (Icon(
                      Icons.error,
                      color: brd,
                    ))
                  : Icon(Icons.delete_forever),
          SizedBox(
            width: 10,
          ),
          Text(
            notification.title ?? "--",
          ),
          Spacer(),
          Text(notification.timestamp ?? "--"),
        ],
      ),
    );
  }
}

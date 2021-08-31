class NotificationInfo {
  final String? title, status, timestamp;

  NotificationInfo({
    this.title,
    this.status,
    this.timestamp,
  });
}

List demoNotifications = [
  NotificationInfo(
    title: "Cobot 'Cobot 3' has been turned off",
    timestamp: "18:53  25/07/2021",
    status: "fine",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 2' has been turned on",
    timestamp: "18:50  25/07/2021",
    status: "fine",
  ),
  NotificationInfo(
    title: "The temperature of 'Cobot 5' has risen over the threshold",
    timestamp: "18:42  25/07/2021",
    status: "warning",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 7' stopped working unexpectedly",
    timestamp: "18:35  25/07/2021",
    status: "error",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 1' has been turned on",
    timestamp: "18:20  25/07/2021",
    status: "fine",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 1' stopped working unexpectedly",
    timestamp: "18:19  25/07/2021",
    status: "error",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 6' came back online",
    timestamp: "17:57 25/07/2021",
    status: "fine",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 6' has gone offline",
    timestamp: "17:56 25/07/2021",
    status: "warning",
  )
];

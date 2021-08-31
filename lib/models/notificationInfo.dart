class NotificationInfo {
  final String? title, status;

  NotificationInfo({
    this.title,
    this.status,
  });
}

List demoNotifications = [
  NotificationInfo(
    title: "Cobot 'Cobot 3' has been turned off",
    status: "warning",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 2' has been turned on",
    status: "warning",
  ),
  NotificationInfo(
    title: "The temperature of 'Cobot 5' has risen over the threshold",
    status: "warning",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 7' stopped working unexpectedly",
    status: "error",
  ),
  NotificationInfo(
    title: "Cobot 'Cobot 1' has been turned on",
    status: "warning",
  ),
];

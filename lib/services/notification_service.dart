// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   // Initialize the notification plugin
//   Future<void> initialize() async {
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: AndroidInitializationSettings('@mipmap/ic_launcher'));
//     await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   // Schedule a notification
//   Future<void> scheduleNotification(String taskId, String taskTitle) async {
//     final DateTime now = DateTime.now();
//     final DateTime deadline =
//         now.add(const Duration(minutes: 10)); // 10 minutes before deadline

//     final AndroidNotificationDetails androidPlatformChannelSpecifics =
//         const AndroidNotificationDetails('task_notification_channel',
//             'Task Notifications', 'Notifications for tasks',
//             importance: Importance.max,
//             priority: Priority.high,
//             showWhen: false);
//     final NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);

//     await _flutterLocalNotificationsPlugin.zonedSchedule(
//         int.parse(taskId),
//         'Task Reminder',
//         'Task "$taskTitle" is due in 10 minutes!',
//         deadline,
//         platformChannelSpecifics,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }
// }

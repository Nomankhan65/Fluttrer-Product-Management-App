import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
 import 'package:pruduct_management_app/view/cart_screen.dart';
import 'package:timezone/timezone.dart' as tz;


class NotificationServices  {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  late BuildContext context;

  // Initialize the notification plugin
  Future<void> initialize(BuildContext cntxt) async {
    context = cntxt;

    // Android-specific initialization
    const AndroidInitializationSettings androidInitialize =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS-specific initialization
    const DarwinInitializationSettings iOSInitialize = DarwinInitializationSettings();

    // Combine both Android and iOS settings
    const InitializationSettings initializationSettings =
    InitializationSettings(android: androidInitialize, iOS: iOSInitialize);

    // Initialize the plugin with settings and handle notification responses
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }

  // Handles actions when a notification is tapped or interacted with
  Future<void> onDidReceiveNotificationResponse(
      NotificationResponse response) async {
    final String? payload = response.payload;

    // Navigate to CartScreen when the notification is tapped
    if (payload != null) {
      await Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => CartScreen()),
      );
    }
  }

  // Show an instant notification
  Future<void> showNotification({required String title, required String body}) async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'default_channel_id', // Replace with your unique channel ID
      'Default Channel', // Replace with your channel name
      channelDescription: 'Default channel for notifications',
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );

    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidDetails);

    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      title,
      body,
      notificationDetails,
    );
  }

  // Schedule a notification for a future time
  Future<void> scheduleNotification(DateTime scheduledTime, int id,
      {String title = 'Reminder', String body = 'You have items in your cart waiting for checkout'}) async {
    // Calculate the difference between the scheduled time and the current time
    final int timeDifference = scheduledTime
        .millisecondsSinceEpoch -
        DateTime.now().millisecondsSinceEpoch;

    // Schedule the notification
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title, // Title of the notification
      body, // Body of the notification
      tz.TZDateTime.now(tz.local).add(Duration(milliseconds: timeDifference)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'scheduled_channel_id', // Replace with your unique channel ID
          'Scheduled Notifications', // Replace with your channel name
          channelDescription: 'Notifications scheduled for the future',
          importance: Importance.high,
          priority: Priority.high, // Custom sound
          playSound: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}


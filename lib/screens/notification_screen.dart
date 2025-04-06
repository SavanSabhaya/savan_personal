import 'package:flutter/material.dart';
import '../services/notification_service.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationService = NotificationService();

    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => notificationService.showNotification(
                title: "Profile Update",
                body: "Your profile has been updated!",
              ),
              child: const Text("Profile Notification"),
            ),
            ElevatedButton(
              onPressed: () => notificationService.showNotification(
                title: "Task Reminder",
                body: "You have a pending task!",
              ),
              child: const Text("Task Notification"),
            ),
            ElevatedButton(
              onPressed: () => notificationService.showNotification(
                title: "Alarm Alert",
                body: "Wake up! It's time to start the day!",
              ),
              child: const Text("Alarm Notification"),
            ),
          ],
        ),
      ),
    );
  }
}

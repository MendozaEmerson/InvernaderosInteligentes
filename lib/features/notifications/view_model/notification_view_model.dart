import 'package:flutter/material.dart';
import '../../../model/notification_model.dart';
import '../dummy/dummy_notifications.dart';

class NotificationViewModel extends ChangeNotifier {
  final List<NotificationModel> _notifications = dummyNotifications;

  List<NotificationModel> get notifications => _notifications;

  int get notificationCount => _notifications.length;

  // Simulación de un nuevo estado
  void addNotification(NotificationModel newNotification) {
    _notifications.add(newNotification);
    notifyListeners();
  }
}

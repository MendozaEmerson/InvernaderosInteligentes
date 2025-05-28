import 'package:flutter/material.dart';
import '../view_model/notification_view_model.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotificationViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('Notificaciones')),
      body: Column(
        children: [
          //Text('Total: ${viewModel.notificationCount} notificaciones'),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.notifications.length,
              itemBuilder: (context, index) {
                final notification = viewModel.notifications[index];
                return ListTile(
                  title: Text(notification.title),
                  subtitle: Text(notification.message),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

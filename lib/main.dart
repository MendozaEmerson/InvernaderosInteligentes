import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/notifications/view/notification_screen.dart';
import 'features/notifications/view_model/notification_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NotificationViewModel(), 
      child: MaterialApp(
        home: NotificationScreen(),
      ),
    );
  }
}

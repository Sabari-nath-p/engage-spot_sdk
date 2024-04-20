import 'package:engagespot_sdk/models/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:engagespot_sdk/engagespot_sdk.dart';

void main() {
  Engagespot.initSdk(
    isDebug: true,
    apiKey: "<<api_key>>",
  );

  Engagespot.LoginUser(userId: "<<user_id>>");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () async {
              // Engagespot.LoginUser(userId: "sabarinath5604@gmail.com");
              Engagespot.ListernMessage(
                  onMessage: (event) {
                    //   print(event.title);
                  },
                  onReadAll: () {});
              NotificationSet ns = await Engagespot.getNotifications();
            },
          ),
        ),
      ),
    );
  }
}

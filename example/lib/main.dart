import 'package:engagespot_sdk/models/Notifications.dart';
import 'package:flutter/material.dart';
import 'package:engagespot_sdk/engagespot_sdk.dart';

void main() {
  Engagespot.initSdk(
      isDebug: true,
      apiKey: "56ykhkd66hhixa0h2p4uq",
      apiSecret: "achn0phbcjq4g7g4gf9g6l3cj2f5edhejd7b28jhd94ei63d");

  Engagespot.LoginUser(userId: "sabarinath5604@gmail.com");
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
                      print(event.title);
                    },
                    onReadAll: () {});
                NotificationSet ns = await Engagespot.getNotifications();
                print(ns.unReadCount);
                print(ns.NotificationMessage);
              },
              child: Text('Hello World!')),
        ),
      ),
    );
  }
}

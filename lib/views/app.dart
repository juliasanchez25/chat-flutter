// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'chat.page.dart';
import 'chats.page.dart';
import 'package:flutter/material.dart';
import 'login.page.dart';
import 'new-account.page.dart';
import 'new-chat.page.dart';

class ChatFatecApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/login": (context) => LoginPage(),
        "/new-account": (context) => NewAccountPage(),
        "/chats": (context) => ChatsPage(),
        "/new-chat": (context) => NewChatPage(),
        "/chat": (context) => ChatPage(),
      },
      initialRoute: "/login",
    );
  }
}

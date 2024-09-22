// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/chats-item.dart';
import 'components/search-input.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  logout(BuildContext context) {
    FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Olá, ${user?.displayName}"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/new-chat');
            },
            icon: Icon(Icons.chat_outlined),
          ),
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(),
          SearchInput(),
          Flexible(
            child: ListView(
              children: [
                ChatsItem(
                  userName: 'Ciclano',
                  lastMessage: 'Bom dia! Dormiu bem?',
                  date: DateTime.now(),
                  amount: 2,
                ),
                ChatsItem(
                  userName: 'Beltrano',
                  lastMessage: 'Bom dia! Dormiu bem?',
                  date: DateTime.now(),
                  amount: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



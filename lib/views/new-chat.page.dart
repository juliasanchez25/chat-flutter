// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_fatec/views/components/new-chat-item.dart';
import 'package:chat_fatec/views/components/search-input.dart';
import 'package:flutter/material.dart';

class NewChatPage extends StatelessWidget {
  const NewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Chat"),
      ),
      body: Column(
        children: [
          SearchInput(),
          Flexible(
            child: ListView(
              children: [
                NewChatItem(
                  userName: 'Ciclano',
                  status: 'Last seen yesterday',
                ),
                Divider(),
                NewChatItem(
                  userName: 'Beltrano',
                  status: 'Online',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

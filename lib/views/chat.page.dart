import 'package:chat_fatec/views/components/chat/messagesDate.dart';
import 'package:chat_fatec/views/components/chat/receivedImageMessage.dart';
import 'package:chat_fatec/views/components/chat/receivedMessageReply.dart';
import 'package:chat_fatec/views/components/chat/sentAudioMessage.dart';
import 'package:chat_fatec/views/components/chat/sentMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_fatec/views/components/chat/receivedMessage.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FC),
      appBar: AppBar(
        title: const Text("Fulano"),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              reverse: true,
              children: const [
                SentAudioMessage(),
                ReceivedMessage(),
                MessagesDate(),
                SentMessage(),
                SentMessage(),
                ReceivedMessage(),
                ReceivedMessageReply(),
                ReceivedImageMessage(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: const Color(0xFFFFFFFF),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add),),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F7FC),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const TextField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Good morning",
                        hintStyle: TextStyle(fontSize: 14, color: Color(0xFF0F1828))),
                    ),
                  )
                ),
                IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.paperplane_fill, color: Color(0xFF002DE3),),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

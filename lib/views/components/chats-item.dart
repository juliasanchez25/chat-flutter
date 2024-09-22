import 'package:flutter/material.dart';

class ChatsItem extends StatelessWidget {
  final String userName;
  final String lastMessage;
  final DateTime date;
  final int amount;

  const ChatsItem({
    super.key,
    required this.userName,
    required this.lastMessage,
    required this.date,
    required this.amount
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, '/chat'),
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/200'))),
      ),
      title: Text(userName),
      subtitle: Text(lastMessage),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Now"),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFD2D5F9)),
            child: const Text("1"),
          ),
        ],
      ),
    );
  }
}
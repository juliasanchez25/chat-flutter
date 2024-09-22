import 'package:flutter/material.dart';

class NewChatItem extends StatelessWidget {
  final String userName;
  final String status;

  const NewChatItem({
    super.key,
    required this.userName,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/200'))),
      ),
      title: Text(userName),
      subtitle: Text(status),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
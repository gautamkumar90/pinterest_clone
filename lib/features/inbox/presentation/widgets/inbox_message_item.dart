import 'package:flutter/material.dart';

class InboxMessageItem extends StatelessWidget {
  final String username;
  final String message;
  final String time;

  const InboxMessageItem({
    super.key,
    required this.username,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey.shade800,
        child: const Icon(Icons.person, color: Colors.white),
      ),
      title: Text(
        username,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 4),
          const Icon(Icons.more_horiz, color: Colors.grey),
        ],
      ),
    );
  }
}

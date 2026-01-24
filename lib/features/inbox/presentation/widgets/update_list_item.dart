import 'package:flutter/material.dart';

class UpdateListItem extends StatelessWidget {
  final String title;
  final String time;

  const UpdateListItem({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 48,
          height: 48,
          color: Colors.grey.shade800,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        time,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: const Icon(Icons.more_horiz, color: Colors.grey),
    );
  }
}

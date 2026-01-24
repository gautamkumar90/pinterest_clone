import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/inbox/presentation/widgets/inbox_message_item.dart';

class InboxMessagesTab extends StatelessWidget {
  const InboxMessagesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: 6,
      separatorBuilder: (_, __) =>
          const Divider(color: Colors.grey, height: 1, indent: 80),
      itemBuilder: (context, index) {
        return const InboxMessageItem(
          username: 'Pinterest',
          message: 'We found some new ideas you might like',
          time: '2d',
        );
      },
    );
  }
}

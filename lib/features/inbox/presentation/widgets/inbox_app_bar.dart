import 'package:flutter/material.dart';

class InboxAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const InboxAppBar({super.key, required this.tabController});

  @override
  Size get preferredSize => const Size.fromHeight(96);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: const Text(
        'Inbox',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
      actions: [IconButton(icon: const Icon(Icons.tune), onPressed: () {})],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        indicatorWeight: 2,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(fontWeight: FontWeight.w600),
        tabs: const [
          Tab(text: 'Updates'),
          Tab(text: 'Inbox'),
        ],
      ),
    );
  }
}

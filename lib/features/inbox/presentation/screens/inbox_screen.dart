import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/inbox/presentation/widgets/inbox_app_bar.dart';
import 'package:pinterest_clone/features/home/presentation/tabs/inbox_messages_tab.dart';
import 'package:pinterest_clone/features/home/presentation/tabs/updates_tab.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InboxAppBar(tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: const [UpdatesTab(), InboxMessagesTab()],
      ),
    );
  }
}

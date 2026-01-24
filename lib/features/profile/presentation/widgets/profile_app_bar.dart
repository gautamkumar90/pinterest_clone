import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final TabController tabController;

  const ProfileAppBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: Text(
              "G",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              indicatorWeight: 2,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: "Pins"),
                Tab(text: "Boards"),
                Tab(text: "Collages"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

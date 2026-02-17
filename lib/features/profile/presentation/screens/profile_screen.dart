import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_boards_tab.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_collages_tab.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_search_bar.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_filter_chips.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_pins_grid.dart';
import 'package:pinterest_clone/utils/create_bottom_sheet.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _openCreateSheet() {
    showCreateBottomSheet(
      context,

      /// 👉 switch to Boards tab
      onCreateBoard: () {
        _tabController.animateTo(1);
      },

      /// 👉 switch to Collages tab
      onCreateCollage: () {
        _tabController.animateTo(2);
      },

      /// optional
      onCreatePin: () {
        _tabController.animateTo(0);
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            ProfileAppBar(tabController: _tabController),

            /// ✅ pass callback here
            ProfileSearchBar(onCreatePressed: _openCreateSheet),

            ProfileFilterChips(),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ProfilePinsGrid(),
                  ProfileBoardsTab(),
                  ProfileCollagesTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

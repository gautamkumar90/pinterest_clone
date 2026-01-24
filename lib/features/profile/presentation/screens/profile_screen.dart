import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_app_bar.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_search_bar.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_filter_chips.dart';
import 'package:pinterest_clone/features/profile/presentation/widgets/profile_pins_grid.dart';

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
            ProfileSearchBar(),
            ProfileFilterChips(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ProfilePinsGrid(),
                  Center(child: Text("Boards", style: TextStyle(color: Colors.white))),
                  Center(child: Text("Collages", style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

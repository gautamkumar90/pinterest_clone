import 'package:flutter/material.dart';
import 'package:pinterest_clone/utils/create_bottom_sheet.dart';

class ProfileSearchBar extends StatelessWidget {
  const ProfileSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Search your Pins",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(14),
            ),
            child: IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () => showCreateBottomSheet(context),
            ),
          ),
        ],
      ),
    );
  }
}

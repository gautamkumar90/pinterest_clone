import 'package:flutter/material.dart';

class ProfileBoardsTab extends StatelessWidget {
  const ProfileBoardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Illustration
            Image.network(
              "https://img.freepik.com/free-vector/cork-board-with-pinned-paper-notepad-sheets-photos-realistic_1284-13718.jpg?t=st=1771168627~exp=1771172227~hmac=17bb9c609e1703ccf682757508863773a46dc40527bc082e7069917f207aa5c3", // add your asset
              height: 180,
            ),

            const SizedBox(height: 28),

            /// Title
            const Text(
              "Organise your ideas",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 12),

            /// Description
            const Text(
              "Pins are sparks of inspiration. Boards are where they live. "
              "Create boards to organise your Pins your way.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 28),

            /// Create Board Button
            ElevatedButton(
              onPressed: () {
                // open create board flow
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE60023), // Pinterest red
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Text(
                "Create a board",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

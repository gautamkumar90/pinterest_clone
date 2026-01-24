import 'package:flutter/material.dart';

class SearchTopBar extends StatelessWidget {
  const SearchTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: const [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Search for ideas",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Icon(Icons.camera_alt_outlined, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

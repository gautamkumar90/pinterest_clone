import 'package:flutter/material.dart';

class ProfileFilterChips extends StatelessWidget {
  const ProfileFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _Chip(icon: Icons.grid_view, label: ""),
            _Chip(icon: Icons.star, label: "Favourites"),
            _Chip(label: "Created by you"),
          ],
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final IconData? icon;
  final String label;

  const _Chip({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: Colors.white, size: 16),
            if (label.isNotEmpty) const SizedBox(width: 6),
          ],
          if (label.isNotEmpty)
            Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

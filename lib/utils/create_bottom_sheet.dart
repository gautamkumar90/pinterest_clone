import 'package:flutter/material.dart';

void showCreateBottomSheet(
  BuildContext context, {
  VoidCallback? onCreatePin,
  VoidCallback? onCreateCollage,
  VoidCallback? onCreateBoard,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: const BoxDecoration(
          color: Color(0xFF2B2B2B),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.close_sharp, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                  style: IconButton.styleFrom(iconSize: 30),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Start creating now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CreateButton(
                  icon: Icons.push_pin_outlined,
                  label: "Pin",
                  onTap: () {
                    Navigator.pop(context);
                    onCreatePin?.call();
                  },
                ),
                _CreateButton(
                  icon: Icons.cut,
                  label: "Collage",
                  onTap: () {
                    Navigator.pop(context);
                    onCreateCollage?.call();
                  },
                ),
                _CreateButton(
                  icon: Icons.space_dashboard_outlined,
                  label: "Board",
                  onTap: () {
                    Navigator.pop(context);
                    onCreateBoard?.call();
                  },
                ),
              ],
            ),

            const SizedBox(height: 70),
          ],
        ),
      );
    },
  );
}

class _CreateButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _CreateButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: const Color(0xFF3A3A3A),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

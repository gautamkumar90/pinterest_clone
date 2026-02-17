import 'package:flutter/material.dart';

class ProfileCollagesTab extends StatelessWidget {
  const ProfileCollagesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Filter Chips
        const _CollageFilters(),

        /// Empty State
        const Expanded(child: _EmptyCollageState()),
      ],
    );
  }
}

class _CollageFilters extends StatelessWidget {
  const _CollageFilters();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: const [
          _FilterChip(label: "Created by you", selected: true),
          SizedBox(width: 10),
          _FilterChip(label: "In progress"),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _FilterChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? Colors.grey.shade800 : Colors.grey.shade900,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _EmptyCollageState extends StatelessWidget {
  const _EmptyCollageState();

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
              "https://img.freepik.com/free-vector/empty-photo-frame-display-cover-mockup-template_1017-57563.jpg?t=st=1771171546~exp=1771175146~hmac=f72851107780c1aca5988ad661bf20f3d11462043ebeb7ea04063553d3aa45ca",
              height: 200,
            ),

            const SizedBox(height: 28),

            /// Title
            const Text(
              "Make your first collage",
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
              "Snip and paste the best parts of your favourite Pins "
              "to create something completely new.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 28),

            /// CTA Button
            ElevatedButton(
              onPressed: () {
                // open collage creation
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE60023),
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Text(
                "Create collage",
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

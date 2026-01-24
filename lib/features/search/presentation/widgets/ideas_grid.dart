import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pinterest_clone/features/home/presentation/providers/home_pin_provider.dart';

class IdeasGrid extends ConsumerWidget {
  const IdeasGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final pins = ref.watch(homePinsProvider);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "https://picsum.photos/300/300?random=$index",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Exam memes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "35 Pins · 8mo",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            );
          },
          childCount: 6,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/inbox/presentation/widgets/update_list_item.dart';

class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: const [
        _SectionTitle(title: 'New'),
        UpdateListItem(
          title: 'So iconic',
          time: '3h',
        ),
        _SectionTitle(title: 'Seen'),
        UpdateListItem(
          title: '100% certified good taste',
          time: '15h',
        ),
        UpdateListItem(
          title: 'Feel a little more creative today',
          time: '1d',
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}


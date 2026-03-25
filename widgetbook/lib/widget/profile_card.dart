import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.email,
    this.showAvatar = true,
  });

  final String name;
  final String role;
  final String email;
  final bool showAvatar;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            if (showAvatar)
              CircleAvatar(
                child: Text(name.isNotEmpty ? name[0].toUpperCase() : '?'),
              ),
            if (showAvatar) const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 4),
                  Text(role, style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 2),
                  Text(email, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

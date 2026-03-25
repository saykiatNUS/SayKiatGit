import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widget/profile_card.dart';

@widgetbook.UseCase(name: 'Default', type: ProfileCard)
Widget profileCardDefaultUseCase(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(24),
    child: ProfileCard(
      name: 'Alex Morgan',
      role: 'Product Designer',
      email: 'alex@company.dev',
    ),
  );
}

@widgetbook.UseCase(name: 'Configurable', type: ProfileCard)
Widget profileCardConfigurableUseCase(BuildContext context) {
  final name = context.knobs.string(
    label: 'Name',
    initialValue: 'Saykiat',
  );
  final role = context.knobs.string(
    label: 'Role',
    initialValue: 'Flutter Developer',
  );
  final email = context.knobs.string(
    label: 'Email',
    initialValue: 'saykiat@example.com',
  );
  final showAvatar = context.knobs.boolean(
    label: 'Show Avatar',
    initialValue: true,
  );

  return Padding(
    padding: const EdgeInsets.all(24),
    child: ProfileCard(
      name: name,
      role: role,
      email: email,
      showAvatar: showAvatar,
    ),
  );
}

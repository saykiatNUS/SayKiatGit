import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widget/status_badge.dart';

@widgetbook.UseCase(name: 'All tones', type: StatusBadge)
Widget statusBadgeAllTonesUseCase(BuildContext context) {
  return Wrap(
    spacing: 12,
    runSpacing: 12,
    children: const [
      StatusBadge(label: 'Active', tone: BadgeTone.success),
      StatusBadge(label: 'Pending', tone: BadgeTone.warning),
      StatusBadge(label: 'Failed', tone: BadgeTone.error),
      StatusBadge(label: 'Info', tone: BadgeTone.info),
    ],
  );
}

@widgetbook.UseCase(name: 'Custom label', type: StatusBadge)
Widget statusBadgeCustomLabelUseCase(BuildContext context) {
  final label = context.knobs.string(
    label: 'Label',
    initialValue: 'In review',
  );

  final tone = context.knobs.list<BadgeTone>(
    label: 'Tone',
    options: BadgeTone.values,
    initialOption: BadgeTone.info,
    labelBuilder: (value) => value.name,
  );

  return Center(
    child: StatusBadge(
      label: label,
      tone: tone,
    ),
  );
}

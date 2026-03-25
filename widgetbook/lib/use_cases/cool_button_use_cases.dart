import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widget/CoolButton.dart';

@widgetbook.UseCase(name: 'Primary', type: CoolButton)
Widget coolButtonPrimaryUseCase(BuildContext context) {
  final label = context.knobs.string(
    label: 'Label',
    initialValue: 'Continue',
  );
  final loading = context.knobs.boolean(
    label: 'Loading',
    initialValue: false,
  );
  final fullWidth = context.knobs.boolean(
    label: 'Full Width',
    initialValue: false,
  );

  return Padding(
    padding: const EdgeInsets.all(24),
    child: CoolButton(
      label: label,
      isLoading: loading,
      isFullWidth: fullWidth,
      variant: CoolButtonVariant.primary,
      onPressed: () {},
    ),
  );
}

@widgetbook.UseCase(name: 'Variant Selector', type: CoolButton)
Widget coolButtonVariantUseCase(BuildContext context) {
  final variant = context.knobs.list<CoolButtonVariant>(
    label: 'Variant',
    options: CoolButtonVariant.values,
    initialOption: CoolButtonVariant.secondary,
    labelBuilder: (value) => value.name,
  );

  return Padding(
    padding: const EdgeInsets.all(24),
    child: CoolButton(
      label: 'Action',
      variant: variant,
      onPressed: () {},
    ),
  );
}

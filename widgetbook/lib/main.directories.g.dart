// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _widgetbook;
import 'package:widgetbook_workspace/use_cases/cool_button_use_cases.dart'
    as _widgetbook_workspace_use_cases_cool_button_use_cases;
import 'package:widgetbook_workspace/use_cases/profile_card_use_cases.dart'
    as _widgetbook_workspace_use_cases_profile_card_use_cases;
import 'package:widgetbook_workspace/use_cases/status_badge_use_cases.dart'
    as _widgetbook_workspace_use_cases_status_badge_use_cases;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widget',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'CoolButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Primary',
            builder: _widgetbook_workspace_use_cases_cool_button_use_cases
                .coolButtonPrimaryUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Variant Selector',
            builder: _widgetbook_workspace_use_cases_cool_button_use_cases
                .coolButtonVariantUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'ProfileCard',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Configurable',
            builder: _widgetbook_workspace_use_cases_profile_card_use_cases
                .profileCardConfigurableUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _widgetbook_workspace_use_cases_profile_card_use_cases
                .profileCardDefaultUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'StatusBadge',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'All tones',
            builder: _widgetbook_workspace_use_cases_status_badge_use_cases
                .statusBadgeAllTonesUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Custom label',
            builder: _widgetbook_workspace_use_cases_status_badge_use_cases
                .statusBadgeCustomLabelUseCase,
          ),
        ],
      ),
    ],
  )
];

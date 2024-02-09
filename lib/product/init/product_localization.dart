import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/enums/locales.dart';

@immutable

/// Product localization manager
final class ProductLocalization extends EasyLocalization {
  /// Product need to [child] for a wrap locale item
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  ///Project supported locales
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationPath = 'asset/translations';

  /// Change project language by using [Locales]
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}

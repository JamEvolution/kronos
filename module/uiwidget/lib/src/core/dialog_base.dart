import 'package:flutter/material.dart';

final class DialogBase {
  DialogBase._();

  /// Show a general dialog with
  /// [builder] for the dialog
  /// [barrierDismissible] is false
  /// [useSafeArea] is false
  static Future<T?> show<T>({
    required WidgetBuilder builder,
    required BuildContext context,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }

}




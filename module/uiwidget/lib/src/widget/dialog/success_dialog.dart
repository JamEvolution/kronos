import 'package:flutter/material.dart';

/// Show a dialog for success
class SuccessDialog extends StatelessWidget {
  ///Constructor for dialog
  const SuccessDialog({required this.title, super.key});
  /// Title for the dialog
  final String title;

  /// Show the dialog for success
  /// This will always return true
  static Future<bool?> show<T>({
    required String title,
    required BuildContext context,
  }) async {
    await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(true),
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}

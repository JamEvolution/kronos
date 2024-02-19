import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/project_radius.dart';

/// Radius is 20
class NormalButton extends StatelessWidget {
  /// Contractor
  const NormalButton({required this.title, required this.onPressed, super.key});
  /// title text
  final String title;
  /// button on pressed
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius:ProjectRadius.normal.value,
      child: Text(title),
    );
  }
}

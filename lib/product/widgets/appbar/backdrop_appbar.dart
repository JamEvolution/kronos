import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';

class BackDropAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const BackDropAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropAppBar(
      elevation: 0,
      title: Image.asset(
        ApplicationConstants.COMPANY_LOGO,
        fit: BoxFit.contain,
        height: 220.0,
        width: 220.0,
      ),
      centerTitle: true,
      backgroundColor: ThemeColor.backDropBackgroundColor,
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

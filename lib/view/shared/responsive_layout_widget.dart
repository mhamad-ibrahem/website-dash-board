import 'package:dash_board/core/constant/app_size.dart';
import 'package:flutter/material.dart';

class ResponsiveLayOutWidget extends StatelessWidget {
  const ResponsiveLayOutWidget(
      {super.key,
      required this.mobileScreen,
      required this.tabletScreen,
      required this.desktopScreen});
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < AppSize.mobileMaxSize) {
          return mobileScreen;
        } else if (constraints.maxHeight < AppSize.tabletMaxSize) {
          return tabletScreen;
        } else {
          return desktopScreen;
        }
      },
    );
  }
}

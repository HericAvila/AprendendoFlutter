import 'package:app_delivery/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../../../core/app_icons.dart';
import '../../../core/theme/app_colors.dart';

class HeaderLocationComponent extends StatelessWidget {
  final String location;

  const HeaderLocationComponent({Key key, @required this.location})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    location,
                    style: AppTypography.bodyText(
                      context,
                    ),
                  ),
                  AppIcon(
                    AppIcons.arrowDown,
                    size: Size(20, 20),
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

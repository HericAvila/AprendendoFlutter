import 'package:app_delivery/core/theme/app_colors.dart';
import 'package:app_delivery/views/content/content_page.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: ContentPage(),
    );
  }
}

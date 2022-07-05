import 'package:app_delivery/core/theme/app_colors.dart';
import 'package:app_delivery/core/theme/app_typography.dart';
import 'package:app_delivery/views/content/components/header_local_component.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ContentPage extends StatefulWidget {
  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeaderLocationComponent(
          location: 'Rua da Flores do Campo, 10',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 210),
          child: TabBar(
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelColor: Colors.black,
            unselectedLabelColor: AppColors.black54,
            labelStyle: AppTypography.bodyText(context).copyWith(
              color: Colors.black,
            ),
            indicator: MaterialIndicator(
              color: AppColors.primaryColor,
              height: 2,
              bottomLeftRadius: 5,
              bottomRightRadius: 5,
            ),
            controller: tabController,
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Restaurantes'),
                ),
              ),
              Tab(
                child: Text('Mercados'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

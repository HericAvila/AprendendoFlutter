import 'package:app_delivery/views/content/components/header_local_component.dart';
import 'package:flutter/material.dart';
import 'components/content_tapbar_component.dart';

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
    //categories = controller.getCategorys();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Column(
            children: [
              HeaderLocationComponent(
                location: 'Rua da Flores do Campo, 10',
              ),
              ContentTapBarComponent(
                controller: tabController,
                onTap: (index) {},
              ),
            ],
          ),
        )
      ],
    ));
  }
}

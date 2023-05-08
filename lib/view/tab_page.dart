import 'package:appn3/view/category/science_widget.dart';
import 'package:appn3/view/category/tech_widget.dart';
import 'package:flutter/material.dart';

import 'category/bus_widget.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: TabBar(
              labelColor: Colors.blue,
              controller: tabController,
              tabs: const [
                Tab(text: "Tech"),
                Tab(text: "Science"),
                Tab(text: "Business")
              ]),
        ),
        Expanded(
            flex: 12,
            child: TabBarView(controller: tabController, children: _categories))
      ],
    );
  }

  final List<Widget> _categories = [
    const TechWidget(),
    const ScienceWidget(),
    const AlbumWidget()
  ];
}

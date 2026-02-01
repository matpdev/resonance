import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resonance/contexts/request_context.dart';
import 'package:resonance/pages/home/views/dashboard/widgets/body_tab.dart';
import 'package:resonance/pages/home/views/dashboard/widgets/headers_tab.dart';
import 'package:resonance/pages/home/views/dashboard/widgets/info_tab.dart';
import 'package:resonance/pages/home/views/dashboard/widgets/request_url_bar.dart';
import 'package:resonance/pages/home/views/dashboard/widgets/response_tab.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RequestContext>(
      builder: (context, requestContext, child) {
        return Column(
          children: [
            // Request URL Bar
            RequestUrlBar(requestContext: requestContext),

            // Tabs
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "Headers"),
                Tab(text: "Body"),
                Tab(text: "Response"),
                Tab(text: "Info"),
              ],
            ),

            // Tab Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Headers Tab
                  HeadersTab(context: requestContext),
                  // Body Tab
                  BodyTab(context: requestContext),
                  // Response Tab
                  ResponseTab(context: requestContext),
                  // Info Tab
                  InfoTab(context: requestContext),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

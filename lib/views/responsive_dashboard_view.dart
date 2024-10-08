import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/views/widgets/adabtive_layout.dart';
import 'package:admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/mobile_dashboard/mobile_layout.dart';
import 'package:admin_dashboard/views/widgets/tablet_dashboard/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey <ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return  Scaffold(
      key: scaffoldState,
      appBar: SizeConfig.width < SizeConfig.tablet ? AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
        leading:  IconButton(
            onPressed: (){
              scaffoldState.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
        ),
      ) : null,
      drawer:  SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context)=>const MobileLayout(),
          tabletLayout: (context)=>const TabletLayout(),
          desktopLayout: (context)=>const DashboardDesktopLayout(),
      ),
    );
  }
}

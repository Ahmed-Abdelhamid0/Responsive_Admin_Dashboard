import 'package:admin_dashboard/views/widgets/adabtive_layout.dart';
import 'package:admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context)=>const  SizedBox(),
          tabletLayout: (context)=>const SizedBox(),
          desktopLayout: (context)=>const DashboardDesktopLayout(),
      ),
    );
  }
}

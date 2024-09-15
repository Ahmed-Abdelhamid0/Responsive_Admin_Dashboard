import 'package:admin_dashboard/views/responsive_dashboard_view.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const ResponsiveDashboard());

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );

}



import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_admin_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_admin_dashboard/views/widgets/dashborad_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {


  final GlobalKey<ScaffoldState>scaffoldKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key:scaffoldKey ,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
            elevation: 0,
            backgroundColor:  const Color(0xFFFAFAFA),
            leading: IconButton(
              onPressed: (){
                scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)))
          : null,
          drawer:MediaQuery.sizeOf(context).width < SizeConfig.tablet ?CustomDrawer(): null ,
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayoutView(),
      ),
    );
  }
}

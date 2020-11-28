import 'package:example/views/home/home_view_desktop.dart';
import 'package:example/views/home/home_view_mobile.dart';
import 'package:example/views/home/home_view_watch.dart';
import 'package:example/views/home/home_view_tablet.dart';
import 'package:example/views/home/home_view_wideDesktop.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_view_mobile.dart';
import 'home_view_tablet.dart';
import '../../lib/screentype.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(wideDesktop: 1300, desktop: 900, tablet: 650, watch: 330),
      watch: HomeMobileWatch(context),
      mobile: HomeMobilePortrait(context),
      tablet: HomeMobileTablet(context),
      desktop: HomeMobileDesktop(context),
      wideDesktop: HomeMobileDesktopWide(context),
    );
  }
}

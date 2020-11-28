import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
enum DeviceScreenType {
@Deprecated('Use lowercase version')
Mobile,
@Deprecated('Use lowercase version')
Tablet,
@Deprecated('Use lowercase version')
Desktop,
@Deprecated('Use lowercase version')
Watch,
mobile,
tablet,
desktop,
wideDesktop,
watch
}


/// Contains sizing information to make responsive choices for the current screen
class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  bool get isMobile => deviceScreenType == DeviceScreenType.mobile;

  bool get isTablet => deviceScreenType == DeviceScreenType.tablet;

  bool get isDesktop => deviceScreenType == DeviceScreenType.desktop;

  bool get isWideDesktop => deviceScreenType == DeviceScreenType.wideDesktop;

  bool get isWatch => deviceScreenType == DeviceScreenType.watch;

  SizingInformation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}

/// Manually define screen resolution breakpoints
///
/// Overrides the defaults
class ScreenBreakpoints {
  final double watch;
  final double tablet;
  final double desktop;
  final double wideDesktop;

  const ScreenBreakpoints({
    @required this.wideDesktop,
    @required this.desktop,
    @required this.tablet,
    @required this.watch,
  });

  @override
  String toString() {
    return "Desktop: $desktop, Tablet: $tablet, Watch: $watch";
  }
}

typedef WidgetBuilder = Widget Function(BuildContext);
class ResponsiveSizingConfig {
  static ResponsiveSizingConfig _instance;
  static ResponsiveSizingConfig get instance {
    if (_instance == null) {
      _instance = ResponsiveSizingConfig();
    }

    return _instance;
  }

  static const ScreenBreakpoints _defaultBreakPoints = const ScreenBreakpoints(
    wideDesktop: 1300,
    desktop: 950,
    tablet: 600,
    watch: 300,
  );

  ScreenBreakpoints _customBreakPoints;

  /// Set the breakPoints which will then be returned through the [breakpoints]
  void setCustomBreakpoints(ScreenBreakpoints customBreakpoints) {
    _customBreakPoints = customBreakpoints;
  }

  ScreenBreakpoints get breakpoints =>
      _customBreakPoints ?? _defaultBreakPoints;
}
/// Returns the [DeviceScreenType] that the application is currently running on
DeviceScreenType getDeviceType(
    Size size, [
      ScreenBreakpoints breakpoint,
    ]) {
  double deviceWidth = size.shortestSide;

  if (kIsWeb) {
    deviceWidth = size.width;
  }

  // Replaces the defaults with the user defined definitions
  if (breakpoint != null) {
    if (deviceWidth > breakpoint.wideDesktop) {
      print("wide desktop "+ deviceWidth.toString());
      return DeviceScreenType.wideDesktop;
    }

    if (deviceWidth > breakpoint.desktop) {
      print("desktop "+ deviceWidth.toString());
      return DeviceScreenType.desktop;
    }

    if (deviceWidth > breakpoint.tablet) {
      return DeviceScreenType.tablet;
    }

    if (deviceWidth < breakpoint.watch) {
      return DeviceScreenType.watch;
    }
  } else {
    // If no user defined definitions are passed through use the defaults
    if (deviceWidth >= ResponsiveSizingConfig.instance.breakpoints.wideDesktop) {
      return DeviceScreenType.wideDesktop;
    }
  if (deviceWidth >= ResponsiveSizingConfig.instance.breakpoints.desktop) {
      return DeviceScreenType.desktop;
    }

    if (deviceWidth >= ResponsiveSizingConfig.instance.breakpoints.tablet) {
      return DeviceScreenType.tablet;
    }

    if (deviceWidth < ResponsiveSizingConfig.instance.breakpoints.watch) {
      return DeviceScreenType.watch;
    }
  }

  return DeviceScreenType.mobile;
}

/// Will return one of the values passed in for the device it's running on
T getValueForScreenType<T>({
  BuildContext context,
  T mobile,
  T wideDesktop,
  T tablet,
  T desktop,
  T watch,
}) {
  var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
  // If we're at desktop size
  if (deviceScreenType == DeviceScreenType.desktop) {
    // If we have supplied the desktop layout then display that
    if (desktop != null) return desktop;
    // If no desktop layout is supplied we want to check if we have the size below it and display that
    if (tablet != null) return tablet;
  }
 if (deviceScreenType == DeviceScreenType.wideDesktop) {
    // If we have supplied the desktop layout then display that
    if (desktop != null) return desktop;
    // If no desktop layout is supplied we want to check if we have the size below it and display that
    if (wideDesktop != null) return wideDesktop;
  }

  if (deviceScreenType == DeviceScreenType.tablet) {
    if (tablet != null) return tablet;
  }

  if (deviceScreenType == DeviceScreenType.watch && watch != null) {
    return watch;
  }

  // If none of the layouts above are supplied or we're on the mobile layout then we show the mobile layout
  return mobile;
}

class ScreenTypeValueBuilder<T> {
  @Deprecated('Use better named function getValueForScreenType')
  T getValueForType({
    BuildContext context,
    T mobile,
    T tablet,
    T desktop,
    T wideDesktop,
    T watch,
  }) {
    return getValueForScreenType(
        context: context,
        mobile: mobile,
        tablet: tablet,
        desktop: desktop,
        wideDesktop: wideDesktop,
        watch: watch);
  }
}
/// A widget with a builder that provides you with the sizingInformation
///
/// This widget is used by the ScreenTypeLayout to provide different widget builders
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context,
      SizingInformation sizingInformation,
      ) builder;

  final ScreenBreakpoints breakpoints;

  const ResponsiveBuilder({Key key, this.builder, this.breakpoints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceType(mediaQuery.size, breakpoints),
        screenSize: mediaQuery.size,
        localWidgetSize:
        Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }
}

/// Provides a builder function for a landscape and portrait widget
class OrientationLayoutBuilder extends StatelessWidget {
  final WidgetBuilder landscape;
  final WidgetBuilder portrait;
  const OrientationLayoutBuilder({
    Key key,
    this.landscape,
    this.portrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        var orientation = MediaQuery.of(context).orientation;
        if (orientation == Orientation.landscape) {
          if (landscape != null) {
            return landscape(context);
          }
        }

        return portrait(context);
      },
    );
  }
}

class ScreenTypeLayout extends StatelessWidget {
  final ScreenBreakpoints breakpoints;

  final WidgetBuilder watch;
  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder wideDesktop;
  final WidgetBuilder desktop;

  ScreenTypeLayout(
      {Key key,
        this.breakpoints,
        Widget watch,
        Widget mobile,
        Widget tablet,
        Widget wideDesktop,
        Widget desktop})
      : this.watch = _builderOrNull(watch),
        this.mobile = _builderOrNull(mobile),
        this.wideDesktop = _builderOrNull(wideDesktop),
        this.tablet = _builderOrNull(tablet),
        this.desktop = _builderOrNull(desktop),
        super(key: key);

  const ScreenTypeLayout.builder(
      {Key key,
        this.breakpoints,
        this.watch,
        this.wideDesktop,
        this.mobile,
        this.tablet,
        this.desktop})
      : super(key: key);

  static WidgetBuilder _builderOrNull(Widget widget) {
    return widget == null ? null : ((_) => widget);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      breakpoints: breakpoints,
      builder: (context, sizingInformation) {
        // If we're at desktop size
        if (sizingInformation.deviceScreenType == DeviceScreenType.wideDesktop) {
          // If we have supplied the desktop layout then display that
          if (wideDesktop != null) return wideDesktop(context);

          if (desktop != null) return desktop(context);
          // If no desktop layout is supplied we want to check if we have the size below it and display that
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          // If we have supplied the desktop layout then display that
          if (desktop != null) return desktop(context);
          // If no desktop layout is supplied we want to check if we have the size below it and display that
          if (tablet != null) return tablet(context);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          if (tablet != null) return tablet(context);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch &&
            watch != null) {
          return watch(context);
        }

        // If none of the layouts above are supplied or we're on the mobile layout then we show the mobile layout
        return mobile(context);
      },
    );
  }
}
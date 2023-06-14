import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarColor extends StatelessWidget {
  final bool statusBarVisible;
  final Widget child;
  final Color? statusBarColor;

  const StatusBarColor({
    Key? key,
    required this.statusBarVisible,
    this.statusBarColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (statusBarVisible) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    }

    return child;
  }
}

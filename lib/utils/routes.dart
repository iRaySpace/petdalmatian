import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void navigateTo(
  BuildContext context,
  Widget widget, {
  bool asReplacement = true,
}) {
  final navigatorState = Navigator.of(context);
  if (asReplacement) {
    navigatorState.pushReplacement(
      MaterialPageRoute(builder: (_) => widget),
    );
  } else {
    navigatorState.push(
      MaterialPageRoute(builder: (_) => widget),
    );
  }
}

void navigateClearTo(
  BuildContext context,
  Widget widget,
) {
  final navigatorState = Navigator.of(context);
  navigatorState.pushAndRemoveUntil(
    MaterialPageRoute(builder: (_) => widget),
    (route) => false,
  );
}

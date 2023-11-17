import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton {
  Widget buildButton(VoidCallback onPressed, Widget child);

  factory PlatformButton(TargetPlatform targetPlatform) {
    if (targetPlatform == TargetPlatform.iOS) {
      return IOSButton();
    } else {
      return AndroidButton();
    }
  }
}

class AndroidButton implements PlatformButton {
  @override
  Widget buildButton(VoidCallback onPressed, Widget child) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}

class IOSButton implements PlatformButton {
  @override
  Widget buildButton(VoidCallback onPressed, Widget child) {
    return CupertinoButton.filled(
      onPressed: onPressed,
      child: child,
    );
  }
}

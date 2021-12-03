import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppBadger {
  static const MethodChannel _channel =
      const MethodChannel('g123k/flutter_app_badger');

  static Future<void> updateBadgeCount(int count) async {
    await _channel.invokeMethod('updateBadgeCount', {"count": count});
  }

  static Future<void> removeBadge() async {
    await _channel.invokeMethod('removeBadge');
  }

  static Future<bool> isAppBadgeSupported() async {
    final bool? appBadgeSupported =
        await _channel.invokeMethod('isAppBadgeSupported');
    return appBadgeSupported ?? false;
  }
}

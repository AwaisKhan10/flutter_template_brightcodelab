import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CustomLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    final color = PrettyPrinter.defaultLevelEmojis[event.level];
    for (var line in event.lines) {
      debugPrint(color);
    }
  }
}

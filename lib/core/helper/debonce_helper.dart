import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Debounce {
  final int milliseconds;
  late VoidCallback action;
  Timer? _timer;

  Debounce({this.milliseconds = 500});

  void run(VoidCallback action) {
    if (_timer?.isActive != null) _timer!.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() => _timer!.cancel();
}
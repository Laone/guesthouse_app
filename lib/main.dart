import 'dart:js';

import 'package:flutter/material.dart';
import 'package:guest_house/pages/calendar.dart';
import 'package:guest_house/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/calendar': (context) => Calendar(),
    },
  ));
}

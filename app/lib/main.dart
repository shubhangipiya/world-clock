// ignore: unused_import
// ignore: avoid_web_libraries_in_flutter

import 'package:app/pages/choose_location.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
